/**
 * PageController
 *
 * @description :: Server-side logic for managing pages
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var accounting = require('accounting');
var options = {
	symbol : "VNĐ",
	decimal : ".",
	thousand: ".",
	precision : 0,
	format: "%v %s"
};
module.exports = {
    index: function (req, res) {
        Sanpham.find({ trangthai: 1, limit: 10, }).sort('id DESC').exec(function (err, sp) {
            return res.view('frontend/index/index', {
                layout: 'frontend/layout/layout',
                sanpham: sp,
                title: 'index.ejs',
            })
        });
    },
    single: function (req, res) {
        Sanpham.findOne({ id: req.param('id') }).populate('anhsanpham').exec(function (err, result) {
            return res.view('frontend/single/single', {
                layout: 'frontend/layout/layout',
                title: result.tensanpham,
                result: result,
            });
        });
    },
    cart: function (req, res) {
        if (!req.session.cart) {
            return res.view('frontend/cart/cart', {
                layout: 'frontend/layout/layout',
                product: null,
            });
        }
        var cart = new addCart(req.session.cart);        
        return res.view('frontend/cart/cart', {
            layout: 'frontend/layout/layout',
            title: 'cart.ejs',
            product: cart.generateArray(),
            totalPrice: cart.totalPrice,
            totalQty: cart.totalQty,
            accounting: accounting,
            options: options,
        });        
        // console.log(cart.generateArray());
    },
    checkout: function (req, res) {
        return res.view('frontend/checkout/checkout', {
            layout: 'frontend/layout/layout',
            title: 'checkout.ejs',
        })
    },
    shop: function (req, res) {
        return res.view('frontend/shop/shop', {
            layout: 'frontend/layout/layout',
            title: 'shop.ejs',
        })
    },
};

