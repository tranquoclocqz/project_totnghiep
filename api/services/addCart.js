module.exports = function (x) {
    this.items = x.items || {};
    this.totalQty = x.totalQty || 0;
    this.totalPrice = x.totalPrice || 0;
    this.add = function (item, id) {
        var storeItems = this.items[id];
        if (!storeItems) {
            storeItems = this.items[id] = { item: item, qty: 0, gia: 0 };
            storeItems.qty++;
            storeItems.gia = (storeItems.item.khuyenmai != 0 ? storeItems.item.khuyenmai : storeItems.item.gia) * storeItems.qty;
            this.totalQty++;
        } else {
            storeItems.qty++;
            storeItems.gia = (storeItems.item.khuyenmai != 0 ? storeItems.item.khuyenmai : storeItems.item.gia) * storeItems.qty;
        }
        this.totalPrice = storeItems.gia;
    };
    // this.change = function (id, soluong) {
    //     var storeItems = this.items;
    //     storeItems.forEach(function (element) {
    //         // console.log(element.items[id]);
    //         element[id].qty = soluong;
    //     });
    // };
    this.generateArray = function () {
        var arr = [];
        for (var id in this.items) {
            arr.push(this.items[id]);
        }
        return arr;
    }
}