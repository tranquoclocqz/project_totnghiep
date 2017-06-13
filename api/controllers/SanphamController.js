/**
 * SanphamController
 *
 * @description :: Server-side logic for managing sanphams
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var slug = require('url-slug');
var fs = require('fs');
module.exports = {
	danhsachGET: function (req, res) {

	},
	themGET: function (req, res) {
		Thietbi.find({ trangthai: 1 }).exec(function (err, tb) {
			Nhasanxuat.find({ trangthai: 1 }).exec(function (err, nhasx) {
				return res.view('backend/sanpham/them', {
					layout: 'backend/layout/layout',
					thietbi: tb,
					nhasx: nhasx,
					title: 'Thêm sản phẩm',
				});
			});
		});
	},
	themPOST: function (req, res) {
		//req.file('ful_anhdaidien')._files[0].stream.filename
		var name = slug(req.param('txt_tensp')) + '-' + Math.random().toString(36).substr(2, 5) + '.png';
		Sanpham.create({
			tensanpham: req.param('txt_tensp'),
			anhdaidien: name,
			soluong: req.param('txt_sl'),
			gia: req.param('txt_gia'),
			khuyenmai: req.param('txt_km'),
			cauhinh: req.param('txt_cauhinh'),
			mota: req.param('txt_noidung'),
			idnhasanxuat: req.param('cbo_nhasx'),
			slug: slug(req.param('txt_tensp')),
		}).exec({
			err: function (err) {
				return res.serverError(err);
			},
			success: function (result) {
				req.file('ful_anhdaidien').upload({
					saveAs: name,
					dirname: require('path').resolve(sails.config.appPath, 'assets/images'),
				}, function (err) {
					if (err) return res.negotiate(err);
				});
				req.file('ful_anhsanpham').upload({
					dirname: require('path').resolve(sails.config.appPath, 'assets/images'),
				}, function (err, uploadedFiles) {
					if (err) return res.negotiate(err);
					var n = uploadedFiles.length;
					if (n > 0) {
						for (var i = 0; i < n; i++) {
							Hinhsanpham.create({
								idsanpham: result.id,
								url: uploadedFiles[i].fd.split('\\').pop(),
							}).exec(function (err) {
								if (err) { return res.serverError(err); }
							});
						}
					}
					// console.log(n);
				});
				req.flash('success', 'Thành công');
				return res.redirect('/admin/sanpham/them');
			}
		});
	},
	suaGET: function (req, res) {
		Sanpham.query('SELECT sanpham.id,tensanpham,idnhasanxuat,anhdaidien,soluong,gia,khuyenmai,cauhinh,thietbi.id as idthietbi FROM sanpham,nhasanxuat,thietbi WHERE idnhasanxuat = nhasanxuat.id AND nhasanxuat.idthietbi = thietbi.id AND sanpham.id = ?', [req.param('id')], function (err, sp) {
			Thietbi.find({ trangthai: 1 }).exec(function (err, tb) {
				Nhasanxuat.find({ trangthai: 1, idthietbi: tb.id }).exec(function (err, nhasx) {
					Hinhsanpham.find({ idsanpham: sp[0].id }).exec(function (err, hinh) {
						if (err) {
							return res.serverError(err);
						} else {
							return res.view('backend/sanpham/sua', {
								layout: 'backend/layout/layout',
								sanpham: sp[0],
								thietbi: tb,
								nhasx: nhasx,
								hinhsanpham: hinh,
								title: 'Sửa sản phẩm ' + sp[0].tensanpham,
							});
						}
					});
				});
			});
		});
	},
	suaPOST: function (req, res) {
		var name = slug(req.param('txt_tensp')) + '-' + Math.random().toString(36).substr(2, 5) + '.png';
		// Sanpham.update(
		// 	{
		// 		id: req.param('id'),
		// 	},
		// 	{
		// 		tensanpham: req.param('txt_tensp'),
		// 		soluong: req.param('txt_sl'),
		// 		gia: req.param('txt_gia'),
		// 		anhdaidien: name,
		// 		khuyenmai: req.param('txt_km'),
		// 		cauhinh: req.param('txt_cauhinh'),
		// 		mota: req.param('txt_noidung'),
		// 		idnhasanxuat: req.param('cbo_nhasx'),
		// 		slug: slug(req.param('txt_tensp')),
		// 	}).exec({
		// 		err: function (err) {
		// 			return res.serverError(err);
		// 		},
		// 		success: function (sp) {
		// 			if (req.param('chkanhdaidien') == undefined) {
		// 				req.file('ful_anhdaidien').upload({
		// 					saveAs: name,
		// 					dirname: require('path').resolve(sails.config.appPath, 'assets/images'),
		// 				}, function (err) {
		// 					if (err) return res.negotiate(err);
		// 				});
		// 			} else {
		// 				fs.rename('','',function(err){

		// 				});
		// 			}
		// 		}
		// 	});
		Sanpham.findOne({ id: req.param('id') }).exec(function (err, sp) {
			var rc = sp;
			sp.tensanpham = req.param('txt_tensp');
			sp.soluong = req.param('txt_sl');
			sp.gia = req.param('txt_gia');
			if (req.param('chkanhdaidien') == undefined) {								
				req.file('ful_anhdaidien').upload({
					saveAs: name,
					dirname: require('path').resolve(sails.config.appPath, 'assets/images'),
				}, function (err) {
					if (err) return res.negotiate(err);
				});
				fs.unlinkSync(require('path').resolve(sails.config.appPath, 'assets/images') + '/' + sp.anhdaidien);
				sp.anhdaidien = name;
			}
			sp.anhdaidien = name;
			sp.khuyenmai = req.param('txt_km');
			sp.cauhinh = req.param('txt_cauhinh');
			sp.mota = req.param('txt_noidung');
			sp.idnhasanxuat = req.param('cbo_nhasx');
			sp.slug = slug(req.param('txt_tensp'));
			rc.save(function (err) {
				return res.serverError(err);
			});
		});
	},
	xoaPOST: function (req, res) {

	}
};
