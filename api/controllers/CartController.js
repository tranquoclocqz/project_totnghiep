/**
 * CartController
 *
 * @description :: Server-side logic for managing carts
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
    addToCart: function (req, res) {
        // if (!req.session.cart) {
        //     req.session.cart = [{}];
        //     req.session.cart = [{
        //         id: req.param('id'),
        //         soluong: 1,
        //     }]
        // } else {
        //     var flag = false;
        //     for (var i = 0; i < req.session.cart.length; i++) {
        //         if (req.param('id') == req.session.cart[i].id) {
        //             req.session.cart[i].soluong += 1;
        //             flag = true;
        //             break;
        //         }
        //     }
        //     if (flag == false) {
        //         req.session.cart.push({
        //             id: req.param('id'),
        //             soluong: 1,
        //         });
        //     }
        // }
        
    },
    thaydoi: function (req, res) {

    },
    destroy: function (req, res) {
        for (var i = 0; i < req.session.cart.length; i++) {
            if (req.param('huy') == req.session.cart[i].id) {
                delete req.session.cart[i];
                break;
            }
        }
    },
    hoantat: function (req, res) {

    }
};

