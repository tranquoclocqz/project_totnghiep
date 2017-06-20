var accounting = require('accounting');
module.exports = function (req, res, next) {
    if (req.session.cart) {
        var cart = new addCart(req.session.cart);
        req.options.locals.price = cart.totalPrice;
        req.options.locals.qty = accounting.formatMoney(cart.totalQty);
    }
    next();
}