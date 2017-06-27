/**
 * CartController
 *
 * @description :: Server-side logic for managing carts
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
    addToCart: function (req, res) {
        var proid = req.param('id');
        var cart = new addCart(req.session.cart ? req.session.cart : {});
        Sanpham.findOne({ id: proid }).exec(function (err, product) {
            if (err) {
                return res.serverError(err);
            }
            if (!product) {
                console.log('Khong ton tai san pham');
                return;
            }
            cart.add(product, product.id);
            req.session.cart = cart;
            return res.redirect("/cart");
        });
    },
    xoa: function (req, res) {
        var id = req.param('id');
        var cart = new addCart(req.session.cart ? req.session.cart : {});
        delete cart.items[id];
        cart.totalQty--;
        req.session.cart = cart;
        req.session.save(function (err) {
            if (err) {
                return res.serverError(err);
            }
        });
        return res.redirect('/cart');
    }
};

