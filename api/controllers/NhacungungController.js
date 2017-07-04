/**
 * NhacungungController
 *
 * @description :: Server-side logic for managing nhacungungs
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
	getDanhsach: function(req, res){
		Nhacungung.find().exec(function(err, nhacungung){
			return res.view('backend/nhacungung/danhsach',{
				layout:'backend/layout/layout',
				title:'Danh sách nhà cung ứng',
				nhacungung: nhacungung,
			});
		});
	},
	getThem: function(req, res){
		return res.view('backend/nhacungung/them',{
			layout:'backend/layout/layout',
			title:'Thêm nhà cung ứng',
		});
	},
	postThem: function(req, res){
		Nhacungung.create({
			tennhacungung: req.param('txt_tennhacungung'),
			diachi: req.param('txt_diachi'),
			sodienthoai: req.param('txt_sdt'),
			email: req.param('txt_email'),
			trangthai:1,
		}).exec(function(err, nhacungung){
			if(err){
				req.flash('err',err.Errors);
				return res.redirect('/admin/nhacungung/them');
			}
			req.flash('success',"Thêm nhà cung ứng mới thành công");
			return res.redirect('/admin/nhacungung/them');
		});
	},
	getSua: function(req, res){
		Nhacungung.findOne({id: req.param('id')}).exec(function(err, nhacungung){
			return res.view('backend/nhacungung/sua',{
				layout:'backend/layout/layout',
				title:'Cập nhật thông tin nhà cung ứng ' + nhacungung.tennhacunung,
				nhacungung: nhacungung,
			});
		});
	},
	postSua: function(req, res){
		Nhacungung.findOne({id: req.param('id')}).exec(function(err, nhacungung){
			var rc = nhacungung;
			rc.tennhacunung = req.param('txt_tennhacungung');
			rc.sodienthoai = req.param('txt_sdt');
			rc.email = req.param('txt_email');
			rc.diachi = req.param('txt_diachi');
			rc.save(function(err){
				if(err){
					req.flash('err',err.Errors);
					return res.redirect('/admin/nhacungung/sua/'+req.param('id'));
				}
			});
			req.flash('success','Cập nhật thông tin thành công');
			return res.redirect('/admin/nhacungung/sua/'+req.param('id'));
		});
	},
	getXoa: function(req, res){
		Nhacungung.update({id: req.param('id')},{trangthai:0}).exec(function(err, nhacungung){
			if(err){
				return res.serverError(err);
			}
			req.flash('success','Đã xóa thông tin nhà cung ứng');
			return res.redirect('/admin/nhacungung/danhsach');
		});
	}
};

