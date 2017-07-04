/**
 * AdminController
 *
 * @description :: Server-side logic for managing admins
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
	dashboard: function (req, res) {
		Hoadon.find().sort('createdAt DESC').exec(function (err, hoadon) {
			Hoadon.query('SELECT DATE(createdAt) as createdAt, SUM(giatri) as giatri FROM hoadon WHERE trangthai = 0 AND(createdAt BETWEEN (NOW() - INTERVAL  1 MONTH) AND NOW())  GROUP BY DATE(createdAt)',function (err, ds) {
				return res.view('backend/thongke/dashboard', {
					layout: 'backend/layout/layout',
					title: 'Dashboard',
					hoadon: hoadon,
					ds:ds,
					accounting: accounting,
					options: options,
					moment: moment,                                                                                             
				});
			});

		});
	},
	loginGET: function (req, res) {
		return res.view('backend/login/login', { title: 'Đăng nhập' });
	},
	giaohang: function(req, res){
		Hoadon.update({id:req.param('id')},{trangthai:0}).exec(function(err, result){
			if(err){
				return res.serverError(err);
			}
			req.flash('success','Đã giao hàng thành công');
			return res.redirect('/admin/dashboard');
		});
	},
	huydonhangadmin: function(req, res){
        // var id = req.param('id');
        // Hoadon.update({donhang: id},{trangthai:2}).exec(function(err, result){
        //     if(err){
        //         return res.serverError(err);
        //     }
        //     if(_.isEmpty(result)){
        //         req.flash('warning','Không tồn tại đơn hàng');
        //         return res.redirect('/admin/dashboard');
        //     } else {
        //         Chitiethoadon.find({donhang: id}).exec(function(err, cthd){
        //             console.log('cthd',cthd);
        //             cthd.forEach(function(sp){
        //                 console.log('idsanpham',sp.idsanpham);
        //                 Sanpham.findOne({id: sp.idsanpham}).exec(function(err,ctsp){
        //                     if(err){
        //                         return res.serverError(err);
        //                     }
        //                     var rc = ctsp;
        //                     rc.soluong = ctsp.soluong + sp.soluong;
        //                     rc.save();
        //                 });
        //             });
        //         });
        //         req.flash('success','Đơn hàng đã được hũy')
        //         return res.redirect('/admin/dashboard');
        //     }            
        // });
        var id = req.param('id');
        Hoadon.findOne({donhang: id}).exec(function(err, result){        	
        	if(_.isEmpty(result)) {
        		req.flash('warning','Không tồn tại đơn hàng');
                return res.redirect('/admin/dashboard');
            }
            if(result.trangthai == 2){
	    		req.flash('warning','Đơn hàng này đã được hủy không được thể hủy được nữa');
	    		return res.redirect('/admin/dashboard');    		
        	} 
        	if(!_.isEmpty(result)) {
        		var rc1 = result;
        		rc1.trangthai = 2;
        		rc1.save();
        		Chitiethoadon.find({donhang: id}).exec(function(err, cthd){
                    cthd.forEach(function(sp){
                        Sanpham.findOne({id: sp.idsanpham}).exec(function(err,ctsp){
                            if(err){
                                return res.serverError(err);
                            }
                            var rc = ctsp;
                            rc.soluong = ctsp.soluong + sp.soluong;
                            rc.save();
                        });
                    });
                });
                req.flash('success','Đơn hàng đã được hủy');
                return res.redirect('/admin/dashboard');
        	}
        });
    }
};

