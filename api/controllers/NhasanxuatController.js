/**
 * NhasanxuatController
 *
 * @description :: Server-side logic for managing nhasanxuats
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var slug = require('url-slug');
var moment = require('moment');
module.exports = {
    danhsachGET: function (req, res) {
        Nhasanxuat.find().populate('idthietbi').exec(function (err, result) {
            return res.view('backend/nhasanxuat/danhsach', {
                layout: 'backend/layout/layout',
                title: 'Danh sách nhà sản xuất',
                obj: result,
                moment: moment,
            });
        });
    },
    themGET: function (req, res) {
        Thietbi.find().exec(function (err, result) {
            if (err) {
                return res.serverError(err);
            }
            return res.view('backend/nhasanxuat/them', {
                layout: 'backend/layout/layout',
                title: 'Thêm nhà sản xuất ',
                them: sails.getRouteFor('NhasanxuatController.themPOST'),
                objs: result,
            });
        });
    },
    themPOST: function (req, res) {
        Nhasanxuat.create({
            tennhasanxuat: req.param('txt_ten_nhasx'),
            slug: slug(req.param('txt_ten_nhasx')),
            idthietbi: req.param('cbo_danh_tb'),
        }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Errors);
                return res.redirect('/admin/nhasanxuat/them');
            }
            req.flash('success', 'Thêm nhà sản xuất thành công');
            return res.redirect('/admin/nhasanxuat/them');
        });
    },
    suaGET: function (req, res) {
        Nhasanxuat.findOne({ id: req.param('id') }).exec(function (err, nhasx) {
            Thietbi.find().exec(function (err, tb) {
                return res.view('backend/nhasanxuat/sua', {
                    layout: 'backend/layout/layout',
                    nhasx: nhasx,
                    tb: tb,
                    title: nhasx.tennhasanxuat,
                });
            });
        });
    },

    suaPOST: function (req, res) {
        Nhasanxuat.update({
            id: req.param('id')
        }, {
                tennhasanxuat: req.param('txt_ten_nhasx'),
                slug: slug(req.param('txt_ten_nhasx')),
                idthietbi: req.param('cbo_danh_tb'),
            }).exec(function (err, result) {
                if (err) {
                    req.flash('err', err.Errors);
                    return res.redirect('/admin/nhasanxuat/sua/' + req.param('id'));
                }
                req.flash('success', 'Cập nhật thành công');
                return res.redirect('/admin/nhasanxuat/sua/' + req.param('id'));
            });
    },
    xoaGET: function (req, res) {
        Nhasanxuat.update({ trangthai: 0 }, { id: req.param('id') }).exec(function (err) {
            if (err) {
                return res.serverError(err);
            }
            req.flash('success', 'Xóa thành công');
            return res.redirect('/admin/nhasanxuat/xoa/' + req.param('id'));
        });
    },
};

