/**
 * CartController
 *
 * @description :: Server-side logic for managing carts
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
    addToCart: function (req, res) {
        if (!req.session.cart) {
            req.session.cart = [{}];
            req.session.cart = [{
                id: req.param('id'),
                soluong: 1,
            }]
        } else {
            var flag = false;
            for (var i = 0; i < req.session.cart.length; i++) {
                if (req.param('id') == req.session.cart[i].id) {
                    req.session.cart[i].soluong += 1;
                    flag = true;
                    break;
                }
            }
            if (flag == false) {
                req.session.cart.push({
                    id: req.param('id'),
                    soluong: 1,
                });
            }
            // console.log(req.session.cart);
        }
        // res.send(req.session.cart);
    },
    tang: function (req, res) {

    },
    giam: function (req, res) {

    },
    destroy: function (req, res) {

    },
    hoantat: function (req, res) {

    }
};

