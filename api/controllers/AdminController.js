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
		Hoadon.find().exec(function (err, hoadon) {
			Hoadon.query('SELECT DATE(createdAt) as createdAt, SUM(giatri) as giatri FROM hoadon WHERE trangthai != 1 GROUP BY DATE(createdAt)',function (err, ds) {
				console.log(ds);
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
			return res.redirect('/admin/dashboard');
		});
	}
};

