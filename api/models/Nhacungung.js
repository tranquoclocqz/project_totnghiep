/**
 * Nhacungung.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
  	tennhacungung:{
  		type:'text',
  		required: true,
  	},
  	diachi:{
  		type:'text',
  		required: true,
  	},
    sodienthoai:{
      type:'text'
    },
    email:{
      type:'text'
    },
    trangthai:{
      type:'integer',
    },
    chitietnhaphang:{
      collection: 'chitietnhaphang',
      via: 'idnhacungung'
    },
    sanpham:{
      collection:'sanpham',
      via:'idnhacungung'
    }    
  }
};

