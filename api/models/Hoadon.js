/**
 * Hoadon.js
 *
 * @description :: TODO: You might write a short summary of how this model works and what it represents here.
 * @docs        :: http://sailsjs.org/documentation/concepts/models-and-orm/models
 */

module.exports = {
  attributes: {
    donhang: {
      type: 'string',
      defaultsTo: function () {
        return Math.random().toString(36).substr(2, 10);
      }
    },
    khachhang: {
      type: 'text',
      required: true,
      maxLength: 50,
      minLength: 2,
    },
    sodienthoai: {
      type: 'text',
      required: true,
      minLength: 9,
      maxLength: 11,
    },
    diachi: {
      type: 'text',
      required: true,
      minLength: 10,
      maxLength: 50,
    },
    trangthai: {
      type: 'integer',
      defaultsTo: 1,
    },
    giatri: {
      type: 'text'
    },
    chitiethoadon: {
      collection: 'chitiethoadon',
      via: 'idhoadon'
    }
  },
  validationMessages: {
    khachhang: {
      required: "Bạn chưa nhập tên",
      maxLength: "Tên 2 - 50 ký tự",
      minLength: "Tên khách hàng 2 - 50 ký tự",
    },
    sodienthoai: {
      required: "Bạn chưa nhập số điện thoại",
      minLength: "Số điện thoại 2 - 11 số",
      maxLength: "Số điện thoại 2 - 11 số",
    },
    diachi: {
      required: "Bạn chưa nhập địa chỉ",
      minLength: "Địa chỉ 10 - 50 ký tự",
      maxLength: "Địa chỉ 10 - 50 ký tự",
    },
  }
};

