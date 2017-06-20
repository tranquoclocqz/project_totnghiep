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
    this.change = function (item, id, soluong) {
        var storeItems = this.items[id];
        if (storeItems) {
            storeItems.qty = soluong;
            storeItems.gia = (storeItems.item.khuyenmai != 0 ? storeItems.item.khuyenmai : storeItems.item.gia) * storeItems.qty;
            this.totalPrice = storeItems.gia;
            console.log('ok');
        } else console.log('opp');
    };
    this.generateArray = function () {
        var arr = [];
        for (var id in this.items) {
            arr.push(this.items[id]);
        }
        return arr;
    }
}
// var arr = [
//             {
//                 item:
//                     {
//                         idnhasanxuat: null,
//                         id: 1,
//                         tensanpham: '123',
//                         anhdaidien: '123-1rn8m.png',
//                         soluong: 1111111,
//                         gia: '111111111111111',
//                         khuyenmai: '11111111',
//                         cauhinh: '<p>1111111</p>\r\n',
//                         mota: '<p>111111111111</p>\r\n',
//                         slug: '123',
//                         trangthai: 1,
//                         createdAt: '2017-06-20T11:09:22.000Z',
//                         updatedAt: '2017-06-20T11:09:22.000Z'
//                     },
//                 qty: 1,
//                 gia: 11111111
//             },
//             {
//                 item:
//                     {
//                         idnhasanxuat: null,
//                         id: 2,
//                         tensanpham: 'wpe31',
//                         anhdaidien: 'wpe31-a194w.png',
//                         soluong: 111,
//                         gia: '123123123',
//                         khuyenmai: '',
//                         cauhinh: '<p>123</p>\r\n',
//                         mota: '<p>123</p>\r\n',
//                         slug: 'wpe31',
//                         trangthai: 1,
//                         createdAt: '2017-06-20T11:15:12.000Z',
//                         updatedAt: '2017-06-20T11:15:12.000Z'
//                     },
//                 qty: 1,
//                 gia: 123123123
//             }
//         ];
// var storeItems ={
    //                 items:
    //                 {
    //                     '1': { item: [Object], qty: 1, gia: 11111111 },
    //                     '2': { item: [Object], qty: 1, gia: 123123123 }
    //                 },
    //                 totalQty: 2,
    //                 totalPrice: 123123123
    //             }