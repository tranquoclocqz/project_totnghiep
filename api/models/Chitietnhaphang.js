/**
 * Chitietnhaphang.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
  	idnhacungung:{
  		model:'nhacungung'
  	},
  	idsanpham:{
  		model:'sanpham',
  	},
  	soluongnhap:{
  		type:'string',
  	},
  	gianhap:{
  		type:'text',
  	}
  }
};

