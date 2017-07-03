/**
 * User.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

	attributes: {
		username: {
			type: 'string',
			primaryKey: true,
			required: true,
			unique:true,
			maxLength:16,
			minLength:8,
		},
		password: {
			type: 'string',
			required: true,
			maxLength:32,
			minLength:8,
		},
		tennguoidung: {
			type: 'string',
			required: true,
		},
		trangthai: {
			type: 'integer',
		}
	},
	validationMessages: {
        username: {
			required: 'Bạn chưa nhập Username',
			unique:'Tài khoản đã tồn tại',
			maxLength:'Tài khoản 8 - 16 ký tự',
			minLength:'Tài khoản 8 - 16 ký tự',
		},
		password: {
			required: 'Bạn chưa nhập mật khẩu',
			maxLength:'Mật khẩu 8 - 32 ký tự',
			minLength:	'Mật khẩu 8 - 32 ký tự',
		},
		tennguoidung: {
			required: 'Bạn chưa nhập tên người dùng',
		},
    }
};

