/**
 * SliderController
 *
 * @description :: Server-side logic for managing sliders
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var fs = require('fs');
var path = require('path').resolve(sails.config.appPath, 'assets/images');
var slug = require('url-slug');
var moment = require('moment');
module.exports = {
    getDanhsach: function (req, res) {
        Slider.find().exec(function (err, result) {
            return res.view('backend/slider/danhsach', {
                layout: 'backend/layout/layout',
                title: 'Danh sách slider',
                slider: result,
                moment: moment,
            });
        });
    },
    getThem: function (req, res) {
        return res.view('backend/slider/them', {
            layout: 'backend/layout/layout',
            title: 'Thêm slider',
        });
    },
    postThem: function (req, res) {
        Slider.create({
            tieude: req.param('txt_tieude'),
            url: req.param('txt_duongdan'),
            urlanh:slug(req.param('txt_tieude')) + '.png',
        }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Errors);
                return res.redirect('/admin/slider/them');
            }
            req.file("ful_anhdaidien").upload({
                maxBytes: 10000000,
                dirname: path + '/slider',
                saveAs: slug(req.param('txt_tieude')) + '.png',
            }, function (err, success) {
                if (err) {
                    req.flash('err', err.Errors);
                    return res.redirect('/admin/slider/them');
                }
                if (success.length <= 0) {
                    req.flash('err', 'Không có file ảnh được tải lên');
                    return res.redirect('/admin/slider/them');
                }
                req.flash('success', 'Thêm slider thành công');
                return res.redirect('/admin/slider/them');
            });
        });
        console.log('OK');
    },
    getXoa: function (req, res) {
        Slider.destroy({ id: req.param('id') }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Errors);
                return res.redirect('/admin/slider/danhsach');
            }
            req.flash('success', 'Thêm slider thành công');
            return res.redirect('/admin/slider/danhsach');
        });
    },
    suaGET: function (req, res) {
        Slider.findOne({ id: req.param('id') }).exec(function (err, result) {
            return res.view('backend/slider/sua', {
                slider: result,
                title: 'Cập nhật thông tin slider',
                layout: 'backend/layout/layout',
            });
        });
    },
    suaPOST: function (req, res) {
        Slider.findOne({ id: req.param('id') }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Erros);
                return res.redirect('/admin/slider/sua/' + req.param('id'));
            }
            var rc = result;
            req.file("ful_anhdaidien").upload({
                maxBytes: 10000000,
                dirname: path + '/slider',
                saveAs: slug(req.param('txt_tieude')) + '.png',
            }, function (err, success) {
                if (success.length == 0) {
                    rc.tieude = req.param('txt_tieude');
                    rc.url = req.param('txt_duongdan');
                    rc.save();
                    req.flash('success', 'Cập nhật slider thành công');
                    return res.redirect('/admin/slider/sua/' + req.param('id'));
                } else {
                    fs.unlinkSync(path + '/slider/' + result.urlanh);
                    rc.tieude = req.param('txt_tieude');
                    rc.url = req.param('txt_duongdan');
                    rc.urlanh = success[0].fd.split('\\').pop();
                    rc.save();
                    req.flash('success', 'Cập nhật slider thành công');
                    return res.redirect('/admin/slider/sua/' + req.param('id'));
                }           
            });
        });
    }
};

