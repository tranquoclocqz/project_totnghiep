module.exports = {
    mynav: function (req, res) {
        Thietbi.find({ trangthai: 1 }).populate('nhasanxuat', { where: { tranthai: 1 } }).exec(function(err, result){
            req.locals = result;
        });
    }
}