/**
 * Thietbi.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {

  attributes: {
    id: {
      type: 'integer',
      autoIncrement: true,
      primaryKey: true
    },
    tenthietbi: {
      type: 'string',
      required: true,
      minLength: 3,
      maxLength: 20,
    },
    slug: {
      type: 'text'
    },
    nhasanxuat: {
      collection: 'nhasanxuat',
      via: 'idthietbi',
    },
    trangthai: {
      type: 'integer',
      defaultsTo: 1,
    }
  },
  validationMessages: {
    tenthietbi:{
      required: "Bạn chưa nhập tên thiết bị",
      minLength: "Tên thiết bị phải từ 3 - 20 ký tự",
      maxLength: "Tên thiết bị phải từ 3 - 20 ký tự",
    }
  }
};

