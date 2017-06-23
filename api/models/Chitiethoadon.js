/**
 * Chitiethoadon.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    idhoadon: {
      model: 'hoadon',      
    },
    donhang:{
      type:'text'
    },
    idsanpham: {
      model: 'sanpham'
    },
    gia: {
      type: 'text',
    },
    soluong: {
      type: 'integer',
    },
  }
};

