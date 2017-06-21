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
		},
		anhdaidien: {
			type: 'string',
		},
		soluong: {
			type: 'integer',
		},
		gia: {
			type: 'string',
		},
		khuyenmai: {
			type: 'string',
		},
		cauhinh: {
			type: 'text',
		},
		mota: {
			type: 'text',
		},
		idnhasanxuat: {
			model: 'nhasanxuat',
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
			defaultsTo: 1,
		},
		chitiethoadon: {
			collection: 'chitiethoadon',
			via: 'idsanpham'
		}
	}
};

