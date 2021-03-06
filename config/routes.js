/**
 * Route Mappings
 * (sails.config.routes)
 *
 * Your routes map URLs to views and controllers.
 *
 * If Sails receives a URL that doesn't match any of the routes below,
 * it will check for matching files (images, scripts, stylesheets, etc.)
 * in your assets directory.  e.g. `http://localhost:1337/images/foo.jpg`
 * might match an image file: `/assets/images/foo.jpg`
 *
 * Finally, if those don't match either, the default 404 handler is triggered.
 * See `api/responses/notFound.js` to adjust your app's 404 logic.
 *
 * Note: Sails doesn't ACTUALLY serve stuff from `assets`-- the default Gruntfile in Sails copies
 * flat files from `assets` to `.tmp/public`.  This allows you to do things like compile LESS or
 * CoffeeScript for the front-end.
 *
 * For more information on configuring custom routes, check out:
 * http://sailsjs.org/#!/documentation/concepts/Routes/RouteTargetSyntax.html
 */

module.exports.routes = {

  /***************************************************************************
  *                                                                          *
  * Make the view located at `views/homepage.ejs` (or `views/homepage.jade`, *
  * etc. depending on your default view engine) your home page.              *
  *                                                                          *
  * (Alternatively, remove this and add an `index.html` file in your         *
  * `assets` directory)                                                      *
  *                                                                          *
  ***************************************************************************/

  '/': 'PageController.index',
  'GET /:slug-:id.html?': 'PageController.shop',
  'GET /chitiet/:slug/:id.html': 'PageController.single',
  'GET /cart': 'PageController.cart',
  'GET /checkout': 'PageController.checkout',
  'GET /addtocart/:id':'CartController.addToCart',   
  'GET /huydonhang/:id':'PageController.huydonhang',
  /************admin************/
    /************đơn hàng************/
    'GET /admin/donhang/:id':'ChitiethoadonController.donhang',
    'GET /xoa/:id':'CartController.xoa',
    'GET /admin/giaohang/:id':'AdminController.giaohang',
    'GET /admin/huydonhang/:id':'AdminController.huydonhangadmin',
    /************authenticate************/
    'GET /admin/login':'AuthController.loginGET',
    'POST /admin/login':'AuthController.loginPOST',
    /************logout************/
    'GET /admin/logout':'AuthController.destroy',
    /************dashboard************/
    'GET /admin/dashboard':'AdminController.dashboard',
    /************user************/
      /*--danh sách--*/
      'GET /admin/user/danhsach':'UserController.danhsachGET',
      /*--thêm--*/
      'GET /admin/user/them':'UserController.themGET',
      'POST /admin/user/them':'UserController.themPOST',
      /*--sửa--*/

    /************sản phẩm************/
      /*--danh sách--*/
      'GET /admin/sanpham/danhsach':'SanphamController.danhsachGET',
      /*--thêm--*/
      'GET /admin/sanpham/them':'SanphamController.themGET',
      'POST /admin/sanpham/them':'SanphamController.themPOST',
      /*--sửa--*/
      'GET /admin/sanpham/sua/:id':'SanphamController.suaGET',
      'POST /admin/sanpham/sua/:id':'SanphamController.suaPOST',
      /*--xóa--*/
      'GET /admin/sanpham/xoa/:id':'SanphamController.xoaGET',
    /**********Thiết bị**********/
      /*--danh sách--*/
      'GET /admin/thietbi/danhsach':'ThietbiController.danhsachGET',
      /*--thêm--*/
      'GET /admin/thietbi/them':'ThietbiController.themGET',
      'POST /admin/thietbi/them':'ThietbiController.themPOST',
      /*--sửa--*/
      'GET /admin/thietbi/sua-:id':'ThietbiController.suaGET',
      'POST /admin/thietbi/sua-:id':'ThietbiController.suaPOST',
      /*--xóa--*/
      'GET /admin/thietbi/xoa-:id':'ThietbiController.xoaGET',

    /***********Nhà sản xuất*********/
      /*--danh sách--*/
      'GET /admin/nhasanxuat/danhsach':'NhasanxuatController.danhsachGET',
      /*--thêm--*/
      'GET /admin/nhasanxuat/them':'NhasanxuatController.themGET',
      'POST /admin/nhasanxuat/them':'NhasanxuatController.themPOST',
      /*--sửa--*/
      'GET /admin/nhasanxuat/sua-:id':'NhasanxuatController.suaGET',
      'POST /admin/nhasanxuat/sua-:id':'NhasanxuatController.suaPOST',
      /*--xóa--*/
      'GET /admin/nhasanxuat/xoa-:id':'NhasanxuatController.xoaGET',
      /***********Nhà cung cấp*********/
      /*--danh sách--*/
      'GET /admin/nhacungung/danhsach':'NhacungungController.getDanhsach',
      /*--thêm--*/
      'GET /admin/nhacungung/them':'NhacungungController.getThem',
      'POST /admin/nhacungung/them':'NhacungungController.postThem',
      /*--sửa--*/
      'GET /admin/nhacungung/sua/:id':'NhacungungController.getSua',
      'POST /admin/nhacungung/sua/:id':'NhacungungController.postSua',
      /*--xóa--*/
      'GET /admin/nhacungung/xoa/:id':'NhacungungController.getXoa',
     /***********Slider*********/
     /*--danh sách--*/ 
     'GET /admin/slider/danhsach':'SliderController.getDanhsach',
     /*--thêm--*/
     'GET /admin/slider/them':'SliderController.getThem',
     'POST /admin/slider/them':'SliderController.postThem',
     /*--sửa--*/
     'GET /admin/slider/sua/:id':'SliderController.suaGET',
     'POST /admin/slider/sua/:id':'SliderController.suaPOST',
     /*--xóa--*/
     'GET /admin/slider/xoa/:id':'SliderController.getXoa',
    /***********AJAX*********/
      'GET /admin/ajax/nhasx-:id':'AjaxController.nhasx',   
      'POST /thaydoi':'AjaxController.thaydoi',    
      'POST /dathang':'AjaxController.dathang', 
      'GET /timkiem/:key':'AjaxController.timkiem',
      'GET /loadsanpham/:idnsx/:page':'AjaxController.loadsanpham',
      'POST /laythongtindonhang':'AjaxController.laythongtindonhang',
      'POST /doanhthu':'AjaxController.laydoanhthu',
      'GET /admin/laydanhsachdonhang':'AjaxController.laydanhsachdonhang',



  /***************************************************************************
  *                                                                          *
  * Custom routes here...                                                    *
  *                                                                          *
  * If a request to a URL doesn't match any of the custom routes above, it   *
  * is matched against Sails route blueprints. See `config/blueprints.js`    *
  * for configuration options and examples.                                  *
  *                                                                          *
  ***************************************************************************/

};
