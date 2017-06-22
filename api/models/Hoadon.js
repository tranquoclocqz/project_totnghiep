/**
 * Hoadon.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    id: {
      type: 'integer',
      autoIncrement: true,
      primaryKey: true,
    },
    donhang:{
      type:'text',
      defaultsTo: function(){
        return Math.random().toString(36).substr(2, 5);
      }
    },
    khachhang: {
      type: 'text',
    },
    sodienthoai: {
      type: 'text',
    },
    diachi: {
      type: 'text'
    },
    trangthai: {
      type: 'integer',
      defaultsTo: 1,
    },
    ngaylap: function () {
      return new date();
    },
    giatri: {
      type: 'text'
    },    
    chitiethoadon:{
      collection:'chitiethoadon',
      via:'idhoadon'
    }
  }
};

