/**
 * AjaxController
 *
 * @description :: Server-side logic for managing ajaxes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
function truyxuat(req, res){

}
module.exports = {
    nhasx: function (req, res) {
        Nhasanxuat.find({ idthietbi: req.param('id'), trangthai: 1 }).exec(function (err, result) {
            if (err) {
                return res.serverError(err);
            }
            res.writeHead(200, { 'Content-Type': 'html/plain' });
            result.forEach(function (key) {
                return res.write('<option value="' + key.id + '">' + key.tennhasanxuat + '</option>');
            });
            res.end();
        });
    },
    thaydoi: function (req, res) {
        var soluong = req.param('soluong');
        var id = req.param('id');
        if (req.xhr) {
            var cart = new addCart(req.session.cart ? req.session.cart : {});
            var list = cart.generateArray().length;
            Sanpham.findOne({ id: id }).exec(function (err, product) {
                if (err) {
                    return res.serverError(err);
                }
                cart.change(product, product.id, soluong);
                req.session.cart = cart;
                console.log(cart.generateArray());
                return res.json(req.session.cart);
            });
        }
    },
    xoa: function (req, res) {
        var id = req.param('id');
        var cart = new addCart(req.session.cart ? req.session.cart : {});
        cart.remove(id);
        req.session.cart = cart;
        console.log(req.session.cart);
    }
};

