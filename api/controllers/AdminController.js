/**
 * AdminController
 *
 * @description :: Server-side logic for managing admins
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	dashboard: function(req, res){
		return res.view('backend/thongke/dashboard',{
			layout:'backend/layout/layout',
			title:'Dashboard'
		});
	},
	loginGET: function(req, res){
		return res.view('backend/login/login',{title:'Đăng nhập'});
	}
};

