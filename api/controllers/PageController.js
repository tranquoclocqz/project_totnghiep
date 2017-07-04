/**
 * PageController
 *
 * @description :: Server-side logic for managing pages
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
module.exports = {
    index: function (req, res) {
        Sanpham.query('SELECT * FROM `sanpham` WHERE id in (SELECT * FROM (SELECT `idsanpham` FROM chitiethoadon GROUP BY idsanpham ORDER BY sum(`soluong`) DESC limit 5) as t)',function(err, result){
            Sanpham.find({trangthai:1}).sort('createdAt DESC').skip(0).limit(20).exec(function(err, sanpham){
                Slider.find().exec(function(err, slider){
                    return res.view('frontend/index/index',{
                        layout:'frontend/layout/layout',
                        sanpham: result,
                        topsanpham: sanpham,
                        slider:slider,
                        title: 'Ustora trang web bán điện thoại, laptop hàng đầu Việt Nam',
                        accounting: accounting,
                        options: options,
                    });
                });
            });            
        });
    },
    single: function (req, res) {
        Sanpham.query('SELECT * FROM `sanpham` WHERE id in (SELECT * FROM (SELECT `idsanpham` FROM chitiethoadon GROUP BY idsanpham ORDER BY sum(`soluong`) DESC limit 5) as t)',function(err, sanphammuanhieu){
            Sanpham.findOne({ id: req.param('id') }).populate('anhsanpham').exec(function (err, result) {
                return res.view('frontend/single/single', {
                    layout: 'frontend/layout/layout',
                    title: result.tensanpham,
                    result: result,
                    accounting: accounting,
                    options: options,
                    sanphammuanhieu: sanphammuanhieu,
                });
            });
        })
    },
    cart: function (req, res) {
        if (!req.session.cart) {
            return res.view('frontend/cart/cart', {
                layout: 'frontend/layout/layout',
                product: null,
                title: 'Giỏ hàng',
            });
        }
        var cart = new addCart(req.session.cart);
        return res.view('frontend/cart/cart', {
            layout: 'frontend/layout/layout',
            title: 'Giỏ hàng',
            product: cart.generateArray(),
            totalPrice: cart.totalPrice,
            totalQty: cart.totalQty,
            accounting: accounting,
            options: options,
        });
    },
    checkout: function (req, res) {
        return res.view('frontend/checkout/checkout', {
            layout: 'frontend/layout/layout',
            title: 'Kiểm tra đơn hàng',
        });
    },
    shop: function (req, res) {
        // skip: bat dau tu dau, limit: lay bao nhieu
        Sanpham.find({ skip: 0, limit: 8, soluong: { '!': 0 }, trangthai: { '!': 0 }, idnhasanxuat: req.param('id'), sort: 'id DESC' }).populate('idnhasanxuat', { where: { trangthai: 1 } }).exec(function (err, result) {
            return res.view('frontend/shop/shop', {
                layout: 'frontend/layout/layout',
                title: result[0].idnhasanxuat.tennhasanxuat,
                sanpham: result,
                accounting: accounting,
                options: options,
            });         
        });
    },
    huydonhang: function(req, res){
        var id = req.param('id');
        Hoadon.update({donhang: id},{trangthai:2}).exec(function(err, result){
            if(err){
                return res.serverError(err);
            }
            if(_.isEmpty(result)){
                req.flash('warning','Không tồn tại đơn hàng');
                return res.redirect('/checkout');
            } else {
                Chitiethoadon.find({donhang: id}).exec(function(err, cthd){
                    console.log('cthd',cthd);
                    cthd.forEach(function(sp){
                        console.log('idsanpham',sp.idsanpham);
                        Sanpham.findOne({id: sp.idsanpham}).exec(function(err,ctsp){
                            if(err){
                                return res.serverError(err);
                            }
                            var rc = ctsp;
                            rc.soluong = ctsp.soluong + sp.soluong;
                            rc.save();
                        });
                    });
                });
                req.flash('success','Đơn hàng đã được hũy');
                return res.redirect('/checkout');
            }            
        });
    }
};

