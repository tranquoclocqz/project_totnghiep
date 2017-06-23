/**
 * ChitiethoadonController
 *
 * @description :: Server-side logic for managing chitiethoadons
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var accounting = require('accounting');
var options = {
    symbol: "VNĐ",
    decimal: ".",
    thousand: ".",
    precision: 0,
    format: "%v %s"
};
var moment = require('moment');
module.exports = {
    donhang: function (req, res) {
        Chitiethoadon.find({ idhoadon: req.param('id') }).populate('idhoadon').populate('idsanpham').exec(function (err, result) {
            // res.send(result);
            return res.view('backend/donhang/donhang', {
                layout: 'backend/layout/layout',
                chitiet: result,
                title: 'Chi tiết đơn hàng ' + result[0].idhoadon.donhang,
                options: options,
                accounting: accounting,
            });
        });
    }
};

