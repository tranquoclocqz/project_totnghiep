/**
 * CartController
 *
 * @description :: Server-side logic for managing carts
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
module.exports = {
    addToCart: function (req, res) {
        var proid = req.param('id');
        var cart = new addCart(req.session.cart ? req.session.cart : {});//req.session.cart ? req.session.cart : {}
        Sanpham.findOne({ id: proid }).exec(function (err, product) {
            if (err) {
                return res.serverError(err);
            }
            cart.add(product, product.id);
            req.session.cart = cart;
            // console.log(req.session.cart);
            return res.redirect('/');
        });
    },
    thaydoi: function (req, res) {
        // var idproduct = req.param('id');
        var soluong = req.param('txt_soluong');
        var cart = new addCart(req.session.cart ? req.session.cart : {});
        var list = cart.generateArray();
        var i = 0;
        list.forEach(function (element) {
            Sanpham.findOne({ id: element.item.id }).exec(function (err, product) {
                if (err) {
                    return res.serverError(err);
                }
                cart.change(product, product.id, soluong[i]);
                req.session.cart = cart;
                i++;
            });
        });
        console.log(req.session.cart);
        return res.redirect('/cart');
    },
    destroy: function (req, res) {

    },
    hoantat: function (req, res) {

    }
};

