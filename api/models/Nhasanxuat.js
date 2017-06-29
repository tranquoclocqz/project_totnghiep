/**
 * Nhasanxuat.js
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
    idthietbi: {
      model: 'thietbi',
      required: true,
    },
    tennhasanxuat: {
      type: 'string',
      required: true,
      minLength: 3,
      maxLength: 20,
    },
    slug: {
      type: 'text'
    },
    sanpham: {
      collection: 'sanpham',
      via: 'idnhasanxuat',
    },
    trangthai: {
      type: 'integer',
    }
  },
  validationMessages: {
    idthietbi: {
      required: "Bạn chưa chọn thiết bị",
    },
    tennhasanxuat: {
      required: "Bạn chưa nhập tên nhà sãn xuất",
      minLength: "Tên nhà sản xuất 3 - 20 ký tự",
      maxLength: "Tên nhà sản xuất 3 - 20 ký tự",
    },
  }
};

