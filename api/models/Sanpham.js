/**
 * Sanpham.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

	attributes: {
		id: {
			type: 'integer',
			primaryKey: true,
			autoIncrement: true,
		},
		tensanpham: {
			type: 'string',
			required: true,
			maxLength: 100,
			minLength: 1,
		},
		anhdaidien: {
			type: 'string',
			required: true,
		},
		soluong: {
			type: 'integer',
			required: true,
			max: 1000,
			min: 1,
		},
		gianhap:{
			type:'string',
			required:true,
		},
		gia: {
			type: 'string',
			required: true,
		},
		khuyenmai: {
			type: 'string',
			required: true,
		},
		cauhinh: {
			type: 'text',
			required: true,
			maxLength: 50000,
		},
		mota: {
			type: 'text',
			required: true,
			maxLength: 200000,
		},
		idnhasanxuat: {
			model: 'nhasanxuat',
			required: true,
		},
		slug: {
			type: 'string',
		},
		anhsanpham: {
			collection: 'hinhsanpham',
			via: 'idsanpham',
		},
		trangthai: {
			type: 'integer',
		},
		chitiethoadon: {
			collection: 'chitiethoadon',
			via: 'idsanpham'
		},
		chitietnhaphang:{
			collection: 'chitietnhaphang',
			via: 'idsanpham'
		},
		idnhacungung:{
			model:'nhacungung'
		}
	},
	validationMessages: {
		tensanpham: {
			required: "Bạn chưa nhập tên sản phẩm",
			maxLength: "Tên sản phẩm từ 1 - 100 ký tự",
			minLength: "Tên sản phẩm từ 1 - 100 ký tự",
		},
		anhdaidien: {
			required: "Bạn chưa có ảnh đại diện",
		},
		soluong: {
			required: "Bạn chưa nhập số lượng",
			max: "Số lượng từ  1 - 1000",
			min: "Số lượng từ  1 - 1000",
		},
		gianhap:{
			required: "Bạn chưa nhập gía",
		},
		gia: {
			required: "Bạn chưa nhập giá",
		},
		khuyenmai: {
			required: "Bạn chưa nhập giá khuyến mãi",
		},
		cauhinh: {
			required: "Bạn chưa thông tin mô tả cấu hình",
			maxLength: "Mô tả cấu hình tối đa 50000 ký tự",
		},
		mota: {
			required: "Bạn chưa nhập mô tả sản phẩm",
			maxLength: "Mô tả sản phẩm tối đa 200000 ký tự",
		},
		idnhasanxuat: {
			required: "Bạn chưa chọn nhà sản xuất",
		},
	}
};

