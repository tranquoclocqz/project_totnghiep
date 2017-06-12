/**
 * AjaxController
 *
 * @description :: Server-side logic for managing ajaxes
 * @help        :: See http://sailsjs.org/#!/documentation/concepts/Controllers
 */

module.exports = {
    nhasx: function (req, res) {
        Nhasanxuat.find({ idthietbi: req.param('id'), trangthai: 1 }).exec(function (err, result) {
            if (err) {
                return res.serverError(err);
            }            
            res.writeHead(200, { 'Content-Type': 'html/plain' });
            result.forEach(function (key) {                
                return res.write('<option value="' + key.id + '">' + key.tennhasanxuat + '</option>');
            });            
            res.end();
        });
    },
};

