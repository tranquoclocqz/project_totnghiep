/**
 * AjaxController
 *
 * @description :: Server-side logic for managing ajaxes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
function truyxuat(req, res) {

}
module.exports = {
    nhasx: function (req, res) {
        if (req.xhr) {
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
        }
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
        if (req.xhr) {
            var id = req.param('id');
            var cart = new addCart(req.session.cart ? req.session.cart : {});
            console.log(req.session.cart);
            delete cart.items[id];
            cart.totalQty--;
            req.session.cart = cart;
            req.session.save(function (err) {
                if (err) {
                    return res.serverError(err);
                }
            });
            return req.session.cart;
        }
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
                            Sanpham.findOne({ id: x.item.id }).exec(function (err, sanpham) {
                                rc = sanpham;
                                rc.soluong = rc.soluong - x.qty;
                                if (rc.soluong < 0) {
                                    console.log('het hang cua san pham ' + rc.id);
                                    return;
                                }
                                sanpham.save(function (err) {
                                    if (err) {
                                        return res.serverError(err);
                                    }
                                    console.log('- so luong thanh cong');

                                });
                            });
                        }
                    });
                });
                delete req.session.cart;
                return res.end(hoadon.donhang);
            }
        });
    }
};

