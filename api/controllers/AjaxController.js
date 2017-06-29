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
var moment = require('moment');
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

    dathang: function (req, res) {
        var cart = new addCart(req.session.cart ? req.session.cart : {});
        var list = cart.generateArray();
        var rc;
        Hoadon.create({
            khachhang: req.param('txt_tenkhachhang'),
            sodienthoai: req.param('txt_sdt'),
            diachi: req.param('txt_diachi'),
            giatri: req.session.cart.totalPrice,
            trangthai: 1,
        }).exec(function (err, hoadon) {
            if (err) {
                // req.flash('err',err.Errors)
                // return res.redirect('/cart');
                return res.serverError(err);
            }
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
        Sanpham.find({ soluong: { '!': 0 }, trangthai: { '!': 0 }, idnhasanxuat: id }).skip((page - 1) * 8).limit(8).sort('id DESC').exec(function (err, result) {
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
    },
    laythongtindonhang: function (req, res) {
        Chitiethoadon.find({ donhang: req.param('madonhang') }).populate('idhoadon').populate('idsanpham').exec(function (err, result) {
            if (result) {
                res.writeHead(200, { 'Content-Type': 'html/plain' });
                result.forEach(function (ct) {
                    res.write('<tr class="text-center"><td><a href="/chitiet/' + ct.idsanpham.slug + '/' + ct.idsanpham.id + '.html"><img width="65px" height="65px" class="img img-responsive" src="images/anhdaidien/' + ct.idsanpham.anhdaidien + '" alt="' + ct.idsanpham.tensanpham + '"></a></td>'
                        + '<td><a href="/chitiet/' + ct.idsanpham.slug + '/' + ct.idsanpham.id + '.html">' + ct.idsanpham.tensanpham + '</a></td>'
                        + '<td>' + ct.soluong + '</td>'
                        + '<td>' + accounting.formatMoney(ct.gia, options) + '</td>'
                        + '</tr>');
                });
                res.write('<tr><td class="text-center" colspan="3"><h4>Thông tin</h4></td></tr>'
                    + ' <tr>'
                    + '<td colspan="3">Tổng giá trị</td>'
                    + '<td>' + accounting.formatMoney(result[0].idhoadon.giatri, options) + '</td>'
                    + '</tr>'
                    + '<tr>'
                    + '<td>Ngày đặt hàng:</td><td colspan="3"><b>' + moment(result[0].idhoadon.createAt).locale('vi').format('LL') + '</b></td>'
                    + '<tr><td>Người đặt mua:</td><td colspan="3">' + result[0].idhoadon.khachhang + '</td></tr>'
                    + '<tr><td>Địa chỉ:</td><td colspan="3">' + result[0].idhoadon.diachi + '</td></tr>'
                    + '</tr>');
                if (result[0].idhoadon.trangthai == 1) {
                    res.write('<tr><td colspan="4"><span class="label label-primary">Đang trong quá trình giao hàng</span></td></tr>');
                } else {
                    res.write('<tr><td colspan="4"><span class="label label-success">Đã giao hàng</span></td></tr>');
                }
                res.end();
            }
        });
    }
};

