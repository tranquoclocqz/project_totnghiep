/**
 * AuthController
 *
 * @description :: Server-side logic for managing auths
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */
var md5 = require('md5');
module.exports = {
    loginGET: function (req, res) {
        if (req.session.user) {
            return res.redirect('/admin/dashboard');
        } else {
            return res.view('backend/login/login', {
                title: 'Đăng nhập',
            });
        }
    },
    loginPOST: function (req, res) {
        User.findOne({ username: req.param('txt_username'), password: md5(req.param('txt_password'))}).exec(function (err, result) {
            if (err) {
                return serverError(err);
            }
            if (_.isEmpty(result)) {
                req.flash('err', 'Tài khoản không tồn tại vui lòng kiểm tra lại');
                return res.redirect('/admin/login');
            }
            else {
                req.session.user = result;
                req.session.authenticated = true;
                return res.redirect('/admin/dashboard');
            }
        });
    },
    destroy: function (req, res) {
        req.session.destroy();
        return res.redirect('/admin/login');
    }
};

