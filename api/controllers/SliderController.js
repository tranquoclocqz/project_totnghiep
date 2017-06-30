/**
 * SliderController
 *
 * @description :: Server-side logic for managing sliders
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var fs = require('fs');
var path = require('path').resolve(sails.config.appPath, 'assets/images');
module.exports = {
    GETdanhsach: function (req, res) {
        Slider.find().exec(function (err, result) {
            return res.view('backend/slider/danhsach', {
                layout: 'backend/layout/layout',
                title: 'Danh sách slider',
                slider: result,
            });
        });
    },
    GETthem: function (req, res) {
        return res.view('backend/slider/them', {
            layout: 'backend/layout/layout',
            title: 'Thêm slider',
        });
    },
    POSTthem: function (req, res) {
        Slider.create({
            tieude: req.param('txt_tietude'),
            url: req.param('txt_duongdan'),
        }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Errors);
                return res.redirect('/admin/slider/them');
            }
            req.file("ful_anhslider").upload({
                maxBytes: 10000000,
                dirname: path + '/slider',
                saveAs: req.param('txt_tieude') + '.png',
            }, function (err, success) {
                if (err) {
                    req.flash('err', err.Errors);
                    return res.redirect('/admin/slider/them');
                }
                if (success.length <= 0) {
                    req.flash('err', 'Không có file ảnh được tải lên');
                    return res.redirect('/admin/slider/them');
                }
                req.flahs('success', 'Thêm slider thành công');
                return res.redirect('/admin/slider/them');
            });
        });
    },
    POSTxoa: function (req, res) {
        Slider.destroy({ id: req.param('id') }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Errors);
                return res.redirect('/admin/slider/danhsach');
            }
            fs.unlinkSync(path + '/slider/' + result.urlanh);
            req.flahs('success', 'Thêm slider thành công');
            return res.redirect('/admin/slider/danhsach');
        });
    },
    GETsua: function (req, res) {
        Slider.findOne({ id: req.param('id') }).exec(function (err, result) {
            return res.view('backend/slider/sua', {
                slider: result,
                title: 'Cập nhật thông tin slider',
                layout: 'backend/layout/layout',
            });
        });
    },
    POSTsua: function (req, res) {
        Slider.findOne({ id: req.param('id') }).exec(function (err, result) {
            if (err) {
                req.flash('err', err.Erros);
                return res.redirect('/admin/slider/sua/' + req.param('id'));
            }
            var rc = result;
            req.file("ful_anhslider").upload({
                maxBytes: 10000000,
                dirname: path + '/slider',
                saveAs: req.param('txt_tieude') + '.png',
            }, function (err, success) {
                if (success.length <= 0) {
                    req.flash('err', 'Không có file ảnh được tải lên');
                    return res.redirect('/admin/slider/sua/' + req.param('id'));
                }
                if (err) {
                    req.flash('err', err);
                    return res.redirect('/admin/slider/sua/' + req.param('id'));
                }
                rc.tieude = req.param('txt_tieude');
                rc.url = req.param('txt_duongdan');
                rc.urlanh = success[i].fd.split('\\').pop();
                rc.save();
                req.flahs('success', 'Thêm slider thành công');
                return res.redirect('/admin/slider/sua/' + req.param('id'));
            });
        });
    }
};

