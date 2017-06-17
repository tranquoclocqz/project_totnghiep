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
  '/:slug-:id.html': 'PageController.shop',
  '/chitiet/:slug/:id.html': 'PageController.single',
  '/cart': 'PageController.cart',
  '/checkout': 'PageController.checkout',
  '/addtocart/:id':'CartController.addToCart',
  /************admin************/
    
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
      'GET /admin/sanpham/danhsach':'Sanphamcontroller.danhsachGET',
      /*--thêm--*/
      'GET /admin/sanpham/them':'Sanphamcontroller.themGET',
      'POST /admin/sanpham/them':'Sanphamcontroller.themPOST',
      /*--sửa--*/
      'GET /admin/sanpham/sua/:id':'Sanphamcontroller.suaGET',
      'POST /admin/sanpham/sua/:id':'Sanphamcontroller.suaPOST',
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

    /************tin tức************/
      /*--danh sách--*/

      /*--thêm--*/

      /*--sửa--*/
      'GET /admin/ajax/nhasx-:id':'AjaxController.nhasx',






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
