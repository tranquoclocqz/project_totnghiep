/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var md5 = require('md5');
module.exports = {
	//chú thích đầy đủ
	themGET: function(req, res){
		return res.view('backend/taikhoan/them',{
			layout:'backend/layout/layout',
			title:'Đăng ký tài khoản thành viên',
			signup: sails.getRouteFor('UserController.themPOST'),
		});
	},
	themPOST: function(req, res){
		User.create({
			username:req.param('txt_username'),
			password:md5(req.param('txt_password')),
			tennguoidung:req.param('txt_name'),
			email:req.param('txt_email'),
		}).exec(function(err, newsuser){
			if(err){
				//return res.serverError(err);
				return res.send(err);
			}
			req.flash('success','Thành công');
			return res.redirect('/admin/user/them');
		});
	},
	danhsachGET: function(req, res) {
		return res.view('backend/taikhoan/danhsach',{
			layout:'backend/layout/layout',
			title:'Danh sách thành viên'
		});	
	},
};

