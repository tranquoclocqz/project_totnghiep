/**
 * CartController
 *
 * @description :: Server-side logic for managing carts
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
//onblur dung ajax
module.exports = {
    addToCart: function (req, res) {
        var proid = req.param('id');
        var cart = new addCart(req.session.cart ? req.session.cart : {});//req.session.cart ? req.session.cart : {}
        Sanpham.findOne({ id: proid }).exec(function (err, product) {
            if (err) {
                return res.serverError(err);
            }
            if (!product) {
                console.log('Khong ton tai san pham');
            }
            cart.add(product, product.id);
            req.session.cart = cart;
            console.log(req.session.cart);
            return res.redirect('/');
        });
    },
    thaydoi: function (req, res) {

    },
    destroy: function (req, res) {

    },
    dathang: function (req, res) {
        var cart = new addCart(req.session.cart ? req.session.cart : {});
        var list = cart.generateArray();
        var rc;
        Hoadon.create({
            khachhang: req.param('txt_tenkhachhang'),
            sodienthoai: req.param('txt_sdt'),
            diachi: req.param('txt_diachi'),
            giatri: req.session.cart.totalPrice,
        }).exec({
            err: function (err) {
                return res.serverError(err);
            },
            success: function (hoadon) {
                console.log('them hoa don thanh cong');
                // list.forEach(function (x) {
                //     Sanpham.findOne({ id: x.item.id }).exec(function (err, sanpham) {
                //         rc = sanpham;
                //         rc.soluong = rc.soluong - x.qty;
                //         if (rc.soluong < 0) {
                //             console.log('het hang cua san pham ' + rc.id);
                //             return;
                //         }
                //         sanpham.save(function (err) {
                //             if (err) {
                //                 return res.serverError(err);
                //             }
                //             console.log('- so luong thanh cong');
                //             console.log(rc);
                //             req.session.destroy();
                //         });
                //     });
                // });
                list.forEach(function (x) {
                    Chitiethoadon.create({
                        idhoadon: hoadon.id,
                        idsanpham: x.item.id,
                        soluong: x.qty,
                    }).exec({
                        err: function (err) {
                            return res.serverError(err);
                        },
                        success: function (dathang) {
                            console.log('dat hang thanh cong');
                            Sanpham.findOne({id: x.item.id}).exec(function(err, sanpham){
                                rc = sanpham;
                                rc.soluong = rc.soluong - x.qty;
                                if(rc.soluong < 0){
                                    console.log('het hang cua san pham '+rc.id);
                                    return; 
                                }
                                sanpham.save(function(err){
                                    if(err){
                                        return res.serverError(err);
                                    }
                                    console.log('- so luong thanh cong');                                   
                                    
                                });
                            });
                        }
                    });
                });
                req.session.destroy();
                return res.redirect('/cart');
            }
        });
    }
};

