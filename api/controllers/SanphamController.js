/**
 * SanphamController
 *
 * @description :: Server-side logic for managing sanphams
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var slug = require('url-slug');
var fs = require('fs');
var moment = require('moment');

module.exports = {
	danhsachGET: function (req, res) {
		Sanpham.query('SELECT sanpham.id as spid,sanpham.trangthai,sanpham.soluong, tensanpham,tenthietbi,tennhasanxuat,sanpham.createdAt, sanpham.updatedAt, sanpham.trangthai as sptrangthai FROM sanpham,thietbi,nhasanxuat WHERE sanpham.idnhasanxuat = nhasanxuat.id AND nhasanxuat.idthietbi = thietbi.id', function (err, sanpham) {
			return res.view('backend/sanpham/danhsach', {
				layout: 'backend/layout/layout',
				sanpham: sanpham,
				title: 'Danh sách sản phẩm',
				moment: moment,
			});
		});
	},
	themGET: function (req, res) {
		Thietbi.find({ trangthai: 1 }).exec(function (err, tb) {
			Nhasanxuat.find({ trangthai: 1 , idthietbi:tb[0].id}).exec(function (err, nhasx) {
				Nhacungung.find({trangthai:1}).exec(function(err, nhacungung){
					return res.view('backend/sanpham/them', {
						layout: 'backend/layout/layout',
						thietbi: tb,
						nhasx: nhasx,
						nhacungung: nhacungung,
						title: 'Thêm sản phẩm',
					});
				});
			});
		});
	},
	themPOST: function (req, res) {
		var name = slug(req.param('txt_tensp')) + '-' + Math.random().toString(36).substr(2, 5) + '.png';
		var path = require('path').resolve(sails.config.appPath, 'assets/images');
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
			gianhap: req.param('txt_gianhap'),
			trangthai:1,
		}).exec(function (err, result) {
			if (err) {
				req.flash('err', err.Errors);
				return res.redirect('/admin/sanpham/them');
			} else {
				Chitietnhaphang.create({
					idnhacungung: req.param('cbo_nhacungung'),
					idsanpham: result.id,
					soluongnhap: req.param('txt_sl'),
					gianhap: req.param('txt_gianhap'),
				}).exec(function(err, Chitietnhaphang){					
						req.file('ful_anhdaidien').upload({
						saveAs: name,
						maxBytes:10000000,
						dirname: path + "/anhdaidien",
					}, function (err) {
						if (err) return res.negotiate(err);
					});
					req.file('ful_anhsanpham').upload({
						maxBytes:10000000,
						dirname: path + "/anhchitiet",
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
					});
					req.flash('success', 'Thêm sản phẩm mới thành công');
					return res.redirect('/admin/sanpham/them');
				});
			}
		});
	},

	suaGET: function (req, res) {
		Sanpham.query('SELECT sanpham.id,tensanpham,gianhap as gnhap,mota,idnhasanxuat,anhdaidien,soluong,gia,khuyenmai,cauhinh,thietbi.id as idthietbi,idnhacungung FROM sanpham,nhasanxuat,thietbi WHERE idnhasanxuat = nhasanxuat.id AND nhasanxuat.idthietbi = thietbi.id AND sanpham.id = ?', [req.param('id')], function (err, sp) {
			Thietbi.find({ trangthai: 1 }).exec(function (err, tb) {
				Nhasanxuat.find({ trangthai: 1, idthietbi: sp[0].idthietbi }).exec(function (err, nhasx) {
					Hinhsanpham.find({ idsanpham: sp[0].id }).exec(function (err, hinh) {
						Nhacungung.find().exec(function(err, nhacungung){
							if (err) {
								return res.serverError(err);
							} else {
								return res.view('backend/sanpham/sua', {
									layout: 'backend/layout/layout',
									sanpham: sp[0],
									thietbi: tb,
									nhasx: nhasx,
									hinhsanpham: hinh,
									nhacungung: nhacungung,
									title: 'Sửa sản phẩm ' + sp[0].tensanpham,
								});
							}
						});
					});
				});
			});
		});
	},

	suaPOST: function (req, res) {
		var path = require('path').resolve(sails.config.appPath, 'assets/images');
		function saverc(sp, name) {
			var rc = sp;
			rc.anhdaidien = name;
			rc.tensanpham = req.param('txt_tensp');
			rc.soluong = req.param('txt_sl');
			rc.gia = req.param('txt_gia');
			rc.khuyenmai = req.param('txt_km');
			rc.cauhinh = req.param('txt_cauhinh');
			rc.mota = req.param('txt_noidung');
			rc.idnhasanxuat = req.param('cbo_nhasx');
			rc.slug = slug(req.param('txt_tensp'));
			rc.idnhacungung = req.param('cbo_nhacungung');
			rc.save();
		};
		var name = slug(req.param('txt_tensp')) + '-' + Math.random().toString(36).substr(2, 5) + '.png';
		Sanpham.findOne({ id: req.param('id') }).exec(function (err, sp) {
			if (err) {
				req.flash('err', err.Errors);
				return res.redirect('/admin/sua/' + sp.id);
			}
			req.file('ful_anhdaidien').upload({
				saveAs: name,
				dirname: path + '/anhdaidien/',
				maxBytes:10000000,
			}, function (err, uploadedFiles) {
				if (err)
					return res.serverError(err);
				if (_.isEmpty(uploadedFiles)) {
					fs.renameSync(path + '/anhdaidien/' + sp.anhdaidien, path + '/anhdaidien/' + name);
					saverc(sp, name);
				} else {
					fs.unlinkSync(path + '/anhdaidien/' + sp.anhdaidien);
					saverc(sp, name);
				}
			});
			Hinhsanpham.find({ idsanpham: sp.id }).exec(function (err, hsp) {
				req.file('ful_anhsanpham').upload({
					dirname: path + '/anhchitiet/',
				}, function (err, uploadedFiles) {
					if (err)
						return res.serverError(err);
					if (!_.isEmpty(uploadedFiles)) {
						var n = uploadedFiles.length;
						hsp.forEach(function (hinh) {
							fs.unlinkSync(path + '/anhchitiet/' + hinh.url);
						});
						Hinhsanpham.destroy({ idsanpham: sp.id }).exec(function(){
							for (var i = 0; i < n; i++) {
								Hinhsanpham.create({
									idsanpham: sp.id,
									url: uploadedFiles[i].fd.split('\\').pop(),
								}).exec(function (err) {
									if (err) { return res.serverError(err); }
								});
							}
						});						
					}
				});
			});
			Chitietnhaphang.create({
				idnhacungung: req.param('cbo_nhacungung'),
				idsanpham: sp.id,				
				gianhap: req.param('txt_gianhap'),
				soluongnhap: (((sp.soluong - req.param('txt_sl')) < 0) ? ((sp.soluong - req.param('txt_sl')) * - 1) : (sp.soluong - req.param('txt_sl'))),				
			}).exec(function(err, Chitietnhaphang){});
			req.flash('success','Cập nhật sản phẩm thành công');
			return res.redirect('/admin/sanpham/sua/' + sp.id);
		});
	},
	xoaGET: function (req, res) {
		Sanpham.update({ id: req.param('id') }, { trangthai: 0 }).exec(function (err) {
			if (err) {
				return res.serverError(err);
			}
			req.flash('success','Xóa sản phẩm thành công');
			return res.redirect('/admin/sanpham/danhsach');
		});
	}
};
