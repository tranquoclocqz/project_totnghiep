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
        Chitiethoadon.find({ donhang: req.param('id') }).populate('idhoadon').populate('idsanpham').exec(function (err, result) {            
            if(_.isEmpty(result)){
                req.flash('warning','Không tồn tại đơn hàng này');
                return res.view('backend/donhang/donhang',{
                     layout: 'backend/layout/layout',
                     title: 'Không tồn tại đơn hàng',
                     chitiet:null,
                });
            } else {
                return res.view('backend/donhang/donhang', {
                    layout: 'backend/layout/layout',
                    chitiet: result,
                    title: 'Chi tiết đơn hàng ' + result[0].idhoadon.donhang,
                    options: options,
                    accounting: accounting,
                    moment: moment,
                });
            }
        });
    }
};

