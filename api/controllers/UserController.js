/**
 * UserController
 *
 * @description :: Server-side logic for managing users
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var md5 = require('md5');
module.exports = {
	themGET: function (req, res) {		
		return res.view('backend/taikhoan/them', {
			layout: 'backend/layout/layout',
			title: 'Đăng ký tài khoản thành viên',
		});
	},
	themPOST: function (req, res) {
		User.create({
			username: req.param('txt_username'),
			password: md5(req.param('txt_password')),
			tennguoidung: req.param('txt_name'),
			email: req.param('txt_email'),
			trangthai:1,
		}).exec(function (err, newsuser) {
			if (err) {
				req.flash('err', err.Errors );
				return res.redirect('/admin/user/them');
			}
			req.flash('success', 'Thêm tài khoản thành công');
			return res.redirect('/admin/user/them');
		});
	},
	danhsachGET: function (req, res) {
		return res.view('backend/taikhoan/danhsach', {
			layout: 'backend/layout/layout',
			title: 'Danh sách thành viên'
		});
	},
};
// var err = {
// 			"username":
// 			[
// 				{
// 					"rule": "required",
// 					"message": "Bạn chưa nhập Username"
// 				},
// 				{
// 					"rule": "minLength", "message": "Tài khoản 8 - 16 ký tự"
// 				}
// 			],
// 			"tennguoidung":
// 			[
// 				{
// 					"rule": "required",
// 					"message": "Bạn chưa nhập tên người dùng"
// 				}
// 			],
// 			"email":
// 			[
// 				{
// 					"rule": "email",
// 					"message": "Value should be an email (instead of \"\", which is a string)"
// 				},
// 				{
// 					"rule": "required",
// 					"message": "Bạn chưa nhập email"
// 				}
// 			]
// 		};

