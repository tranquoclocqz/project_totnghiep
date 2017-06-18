module.exports = function (x) {
    this.items = x.items || {};
    this.totalQty = x.totalQty || 0;
    this.totalPrice = x.totalPrice || 0;
    this.add = function (item, id) {
        var storeItems = this.items[id];
        if (!storeItems) {
            storeItems = this.items[id] = { item: item, qty: 0, gia: 0 };
        }
        storeItems.qty++;
        storeItems.gia = (storeItems.item.khuyenmai != 0 ? storeItems.item.khuyenmai : storeItems.item.gia) * storeItems.qty;
        this.totalQty++;
        this.totalPrice += storeItems.item.gia;
    };
    this.generateArray = function () {
        var arr = [];
        for (var id in this.items) {
            arr.push(this.items[id]);
        }
        return arr;
    }
    // this.add = function (item, id, paramid) {
    //     if (_.isEmpty(this.items)) {
    //         this.items[id] = { item: item, soluong: 1, gia: item.khuyenmai != 0 ? item.khuyenmai : item.gia };
    //         this.totalQty = 1;
    //         this.totalPrice = this.items[id].khuyenmai != 0 ? this.items[id].khuyenmai : this.items[id].gia;
    //         console.log("1");
    //     } else {
    //         var flag = false;
    //         for (var i = 0; i < this.items.length; i++) {

    //         }
    //         if (flag == false) {
    //             this.items = this.items[id] = { item: item, soluong: 1, gia: item.khuyenmai != 0 ? item.khuyenmai : item.gia };
    //             this.totalQty++;
    //         }
    //         console.log("2");
    //     }
    // var a = 
    // {
    //     items:
    //     {
    //         '17':
    //         {
    //             item:
    //             {
    //                 idnhasanxuat: 1,
    //                 id: 17,
    //                 tensanpham: 'iphone 5s',
    //                 anhdaidien: 'iphone-5s-nw0lh.png',
    //                 soluong: 100,
    //                 gia: '5900000',
    //                 khuyenmai: '0',
    //                 cauhinh: '<p>iphone 5s</p>\r\n',
    //                 mota: '<p>iphone 5s</p>\r\n',
    //                 slug: 'iphone-5s',
    //                 trangthai: 1,
    //                 createdAt: '2017-06-14T06:09:41.000Z',
    //                 updatedAt: '2017-06-14T06:09:41.000Z'
    //             },
    //             soluong: 1,
    //             gia: '5900000'
    //         }
    //     },
    //     totalQty: 0,
    //     totalPrice: 0,
    //     add: [Function]
    // }
    // var a = {
    //     items:
    //     [ <15 empty items>,
    //     {
    //         item:
    //         {
    //             idnhasanxuat: 1,
    //             id: 15,
    //             tensanpham: 'lorem ispum 1234 aa',
    //             anhdaidien: 'iphone-5s-nw0lh.png',
    //             soluong: 1,
    //             gia: '1',
    //             khuyenmai: '1',
    //             cauhinh: '<p>null</p>\r\n',
    //             mota: '<p>undefined</p>\r\n',
    //             slug: 'lorem-ispum-1234-aa',
    //             trangthai: 1,
    //             createdAt: '2017-06-12T16:58:09.000Z',
    //             updatedAt: '2017-06-13T19:03:20.000Z'
    //         },
    //         soluong: 1,
    //         gia: '1'
    //     }],
    //     totalQty: 1,
    //     totalPrice: '1',
    //     add: [Function]
    // }
    // }
}