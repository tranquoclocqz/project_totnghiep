/**
 * ThietbiController
 *
 * @description :: Server-side logic for managing thietbis
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var slug = require('url-slug');
var moment = require('moment');
module.exports = {
    danhsachGET: function (req, res) {
        Thietbi.find().exec(function (err, result) {
            if (err) {
                return res.serverError(err);
            }
            return res.view('backend/thietbi/danhsach', {
                layout: 'backend/layout/layout',
                title: 'Danh sách thiết bị',
                obj: result,
                moment: moment,
            });
        });
    },
    themGET: function (req, res) {
        return res.view('backend/thietbi/them', {
            layout: 'backend/layout/layout',
            title: 'Thêm thiết bị',
            them: sails.getRouteFor('ThietbiController.themPOST')
        });
    },
    themPOST: function (req, res) {
        Thietbi.create({
            tenthietbi: req.param('txt_tendanhmuc'),
            slug: slug(req.param('txt_tendanhmuc')),
        }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Errors);
                return res.redirect('/admin/thietbi/them');
            }
            req.flash('success', 'Thêm thiết bị thành công ' + req.param('txt_tendanhmuc'));
            return res.redirect(sails.getUrlFor('ThietbiController.themGET'));
        });
    },
    suaGET: function (req, res) {
        Thietbi.findOne({ id: req.param('id') }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Errors);
                return res.redirect('/admin/thietbi/them');
            }
            if (result) {
                return res.view('backend/thietbi/sua', {
                    title: result.tenthietbi,
                    layout: 'backend/layout/layout',
                    obj: result,
                });
            }
        });
    },
    suaPOST: function (req, res) {
        Thietbi.update({ id: req.param('id') }, {
            tenthietbi: req.param('txt_tendanhmuc'),
            slug: slug(req.param('txt_tendanhmuc'))
        }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Errors);
                return res.redirect('/admin/thietbi/sua-' + req.param('id'));
            }
            if (result) {
                req.flash('success', 'Cập nhật thành công ' + req.param('txt_tendanhmuc'))
                return res.redirect('/admin/thietbi/sua-' + req.param('id'));
            }
        });
    },
    xoaGET: function (req, res) {
        Thietbi.update({ trangthai: 0 }, { id: req.param('id') }).exec(function (err) {
            if (err) {
                return res.serverError(err);
            }
            req.flash('success', 'Xóa thành công');
            return res.redirect(sails.getUrlFor('ThietbiController.danhsachGET'));
        });
    },
};

