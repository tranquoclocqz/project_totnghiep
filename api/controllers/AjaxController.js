/**
 * AjaxController
 *
 * @description :: Server-side logic for managing ajaxes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var accounting = require('accounting');
var options = {
    symbol: "VNĐ",
    decimal: ".",
    thousand: ".",
    precision: 0,
    format: "%v %s"
};
// module.exports = {
//     nhasx: function (req, res) {
//         if (req.xhr) {
//             Nhasanxuat.find({ idthietbi: req.param('id'), trangthai: 1 }).exec(function (err, result) {
//                 if (err) {
//                     return res.serverError(err);
//                 }
//                 res.writeHead(200, { 'Content-Type': 'html/plain' });
//                 result.forEach(function (key) {
//                     return res.write('<option value="' + key.id + '">' + key.tennhasanxuat + '</option>');
//                 });
//                 res.end();
//             });
//         }
//     },
//     thaydoi: function (req, res) {
//         var soluong = req.param('soluong');
//         var id = req.param('id');
//         if (req.xhr) {
//             var cart = new addCart(req.session.cart ? req.session.cart : {});
//             var list = cart.generateArray().length;
//             Sanpham.findOne({ id: id }).exec(function (err, product) {
//                 if (err) {
//                     return res.serverError(err);
//                 }
//                 cart.change(product, product.id, soluong);
//                 req.session.cart = cart;
//                 req.session.save(function (err) {
//                     if (err) {
//                         return res.serverError(err);
//                     }
//                 });
//                 return res.json(req.session.cart);
//             });
//         }
//     },
//     xoa: function (req, res) {
//         if (req.xhr) {
//             var id = req.param('id');
//             var cart = new addCart(req.session.cart ? req.session.cart : {});
//             delete cart.items[id];
//             cart.totalQty--;
//             req.session.cart = cart;
//             // req.session.save(function (err) {
//             //     if (err) {
//             //         return res.serverError(err);
//             //     }
//             // });
//             console.log(req.session.cart);

//             return req.session.cart;
//         }
//     },
//     // dathang: function (req, res) {
//     //     var cart = new addCart(req.session.cart ? req.session.cart : {});
//     //     var list = cart.generateArray();
//     //     var rc;
//     //     Hoadon.create({
//     //         khachhang: req.param('txt_tenkhachhang'),
//     //         sodienthoai: req.param('txt_sdt'),
//     //         diachi: req.param('txt_diachi'),
//     //         giatri: req.session.cart.totalPrice,
//     //     }).exec({
//     //         err: function (err) {
//     //             return res.serverError(err);
//     //         },
//     //         success: function (hoadon) {
//     //             list.forEach(function (x) {
//     //                 Chitiethoadon.create({
//     //                     idhoadon: hoadon.id,
//     //                     donhang: hoadon.donhang,
//     //                     idsanpham: x.item.id,
//     //                     soluong: x.qty,
//     //                     gia: (x.gia / x.qty)
//     //                 }).exec({
//     //                     err: function (err) {
//     //                         return res.serverError(err);
//     //                     },
//     //                     success: function (dathang) {
//     //                         Sanpham.findOne({ id: x.item.id }).exec(function (err, sanpham) {
//     //                             rc = sanpham;
//     //                             rc.soluong = rc.soluong - x.qty;
//     //                             if (rc.soluong < 0) {
//     //                                 return;
//     //                             }
//     //                             sanpham.save(function (err) {
//     //                                 if (err) {
//     //                                     return res.serverError(err);
//     //                                 }
//     //                             });
//     //                         });
//     //                     }
//     //                 });
//     //             });
//     //             delete req.session.cart;
//     //             return res.end(hoadon.donhang);
//     //         }
//     //     });
//     // },
//     dathang: function (req, res) {
//         var cart = new addCart(req.session.cart ? req.session.cart : {});
//         var list = cart.generateArray();
//         var rc;
//         Hoadon.create({
//             khachhang: req.param('txt_tenkhachhang'),
//             sodienthoai: req.param('txt_sdt'),
//             diachi: req.param('txt_diachi'),
//             giatri: req.session.cart.totalPrice,
//         }).exec({
//             err: function (err) {
//                 return res.serverError(err);
//             },
//             success: function (hoadon) {
//                 console.log('them hoa don thanh cong');
//                 list.forEach(function (x) {
//                     Chitiethoadon.create({
//                         idhoadon: hoadon.id,
//                         idsanpham: x.item.id,
//                         soluong: x.qty,
//                         // donhang: hoadon.donhang,
//                         // gia: (x.gia / x.qty)
//                     }).exec({
//                         err: function (err) {
//                             return res.serverError(err);
//                         },
//                         success: function (dathang) {
//                             console.log('dat hang thanh cong');
//                             Sanpham.findOne({ id: x.item.id }).exec(function (err, sanpham) {
//                                 rc = sanpham;
//                                 rc.soluong = rc.soluong - x.qty;
//                                 if (rc.soluong < 0) {
//                                     console.log('het hang cua san pham ' + rc.id);
//                                     return;
//                                 }
//                                 sanpham.save(function (err) {
//                                     if (err) {
//                                         return res.serverError(err);
//                                     }
//                                     console.log('- so luong thanh cong');

//                                 });
//                             });
//                         }
//                     });
//                 });
//                 delete req.session.cart;
//                 return res.end(hoadon.donhang);
//             }
//         });
//     },
//     timkiem: function (req, res) {
//         var key = req.param('key');
//         Sanpham.find({ tensanpham: { 'like': '%' + key + '%' } }).exec(function (err, result) {
//             if (err) {
//                 return res.serverError(err);
//             }
//             res.writeHead(200, { 'Content-Type': 'html/plain' });
//             result.forEach(function (key) {
//                 return res.write('<li><a href="/chitiet/' + key.slug + '/' + key.id + '.html">' + key.tensanpham + '</a></li>');
//             });
//             res.end();
//         });
//     }
// };
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
            var list = cart.generateArray();
            var tong = 0;
            Sanpham.findOne({ id: id }).exec(function (err, product) {
                if (err) {
                    return res.serverError(err);
                }
                cart.change(product, product.id, soluong);
                req.session.cart = cart;
                list.forEach(function (pri) {
                    tong += pri.gia;
                });
                req.session.cart.totalPrice = tong;
                return res.json(req.session.cart);
            });
        }
    },
    xoa: function (req, res) {
        if (req.xhr) {
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
                list.forEach(function (x) {
                    Chitiethoadon.create({
                        idhoadon: hoadon.id,
                        idsanpham: x.item.id,
                        soluong: x.qty,
                        donhang: hoadon.donhang,
                        gia: (x.gia / x.qty)
                    }).exec({
                        err: function (err) {
                            return res.serverError(err);
                        },
                        success: function (dathang) {
                            Sanpham.findOne({ id: x.item.id }).exec(function (err, sanpham) {
                                rc = sanpham;
                                rc.soluong = rc.soluong - x.qty;
                                if (rc.soluong < 0) {
                                    return;
                                }
                                sanpham.save(function (err) {
                                    if (err) {
                                        return res.serverError(err);
                                    }
                                });
                            });
                        }
                    });
                });
                delete req.session.cart;
                return res.end(hoadon.donhang);
            }
        });
    },
    timkiem: function (req, res) {
        var key = req.param('key');
        Sanpham.find({ tensanpham: { 'like': '%' + key + '%' } }).exec(function (err, result) {
            if (err) {
                return res.serverError(err);
            }
            res.writeHead(200, { 'Content-Type': 'html/plain' });
            result.forEach(function (key) {
                return res.write('<li><a href="/chitiet/' + key.slug + '/' + key.id + '.html">' + key.tensanpham + '</a></li>');
            });
            res.end();
        });
    },
    loadsanpham: function (req, res) {
        var page = req.param('page');
        var id = req.param('idnsx');
        Sanpham.find({soluong: { '!': 0 }, trangthai: { '!': 0 }, idnhasanxuat: id}).skip((page - 1) * 8).limit(8).sort('id DESC').exec(function (err, result) {
            res.writeHead(200, { 'Content-Type': 'html/plain' });
            result.forEach(function (sp) {                
                return res.write('<div class="col-sm-6 col-md-3">'
                    + '<div class="thumbnail">'
                    + '        <a href="/chitiet/' + sp.slug + '/' + sp.id + '.html" title="' + sp.tensanpham + '">'
                    + '            <img src="images/anhdaidien/' + sp.anhdaidien + '" alt="' + sp.tensanpham + '"'
                    + '        </a>'
                    + '       <div class="caption text-center">'
                    + '            <h3>'
                    + '                <a href="/chitiet/' + sp.slug + '/' + sp.id + '.html" title="' + sp.tensanpham + '">' + sp.tensanpham + '</a>'
                    + '            </h3>'
                    + '            <p>'
                    + '                  ' + accounting.formatMoney(sp.gia, options) + ''
                    + '            </p>'
                    // + '            <% if(key.khuyenmai !=){ %>'
                    // + '                <p>'
                    // + '                      '
                    // + '                </p>'
                    // + '                <% } %>'
                    + '                    <p>'
                    + '                        <a href="/addtocart/' + sp.id + '" class="btn btn-primary">Mua ngay</a>'
                    + '                    </p>'
                    + '        </div>'
                    + '   </div>'
                    + '</div>');
            });
            res.end();
        });
        // console.log(id);
        // console.log(page);
    }
};

