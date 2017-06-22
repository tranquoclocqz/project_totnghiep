/**
 * CartController
 *
 * @description :: Server-side logic for managing carts
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
function kiemtra(soluongcon, soluongdat) {

}
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
            console.log(req.session.cart);
            return res.redirect('/');
        });
    },    
};

