module.exports = function (req, res, next) {

    // Default to an object if empty, or use existing locals that may have
    // been set elsewhere
    req.options.locals = req.options.locals || {};

    // Set a new local var that will be available to any controller that
    // implements the policy
    Thietbi.find({ trangthai: 1 }).populate('nhasanxuat').exec(function (err, result) {
        req.options.locals.myVar = result;
        next();
    });    
}