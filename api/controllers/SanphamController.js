/**
 * SanphamController
 *
 * @description :: Server-side logic for managing sanphams
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var slug = require('url-slug');
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
		var name = slug(req.param('txt_tensp')) + '-' + Math.random().toString(36).substr(2, 5);
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
					saveAs: name + '.png',
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

	},
	suaPOST: function (req, res) {

	},
	xoaPOST: function (req, res) {

	}
};
