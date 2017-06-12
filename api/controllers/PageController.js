/**
 * PageController
 *
 * @description :: Server-side logic for managing pages
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
    index: function (req, res) {
        return res.view('frontend/index/index', {
            layout: 'frontend/layout/layout',
            title: 'index.ejs',
        })
    },
    single: function (req, res) {
        return res.view('frontend/single/single', {
            layout: 'frontend/layout/layout',
            title: 'single.ejs',
        })
    },
    cart: function (req, res) {
        return res.view('frontend/cart/cart', {
            layout: 'frontend/layout/layout',
            title: 'cart.ejs',
        })
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

