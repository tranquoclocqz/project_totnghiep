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
    },
    tennhasanxuat: {
      type: 'string'
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
      defaultsTo: 1,
    }
  }
};

