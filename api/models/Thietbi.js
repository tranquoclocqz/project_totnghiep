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
      type: 'string'
    },
    slug: {
      type: 'text'
    },
    nhasanxuat: {
      collection: 'nhasanxuat',
      via: 'idthietbi',
    },
    trangthai:{
      type:'integer',
      defaultsTo : 1,
    }
  }
};

