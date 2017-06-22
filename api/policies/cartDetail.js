module.exports = function (req, res, next) {
    if (req.session.cart) {
        var cart = new addCart(req.session.cart);
        var n = cart.generateArray().length;
        var x = cart.generateArray();
        var tong = 0;
        req.options.locals.qty = cart.totalQty;
        for (var i = 0; i < n; i++) {
            tong += x[i].gia;
        }
        req.session.cart.totalPrice = tong;
        req.options.locals.price = tong;
    }
    next();
}
