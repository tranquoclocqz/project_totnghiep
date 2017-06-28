/**
 * Slider.js
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
    urlanh: {
      type: 'text',
      required: true,
    },
    url: {
      type: "text",
      required: true,
    }
  },
  validationMessages: {
    urlanh: {
      required: "Bạn chưa chọn hình ảnh",
    },
    url: {
      required: "Bạn chưa nhập đường dẫn",
    }
  }
};

