<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', ['as' => 'home', 'uses' => 'HomeController@index']);
Route::get('home', ['as' => 'home', 'uses' => 'HomeController@index']);
Route::get('index', ['as' => 'home', 'uses' => 'HomeController@index']);

//AJAX load product
Route::post('load-product', 'HomeController@loadProduct');

//Login
//Route::get('auth/login', ['as' => 'getLogin', 'uses' => 'Auth\AuthController@getLogin']);
Route::post('auth/login', ['as' => 'postLogin', 'uses' => 'Auth\AuthController@postLogin']);

Route::get('auth/logout', ['as' => 'Logout', 'uses' => 'Auth\AuthController@logout']);

//Facebook login
//Route::get('facebook', function () {
//    return view('facebookAuth');
//});
Route::get('auth/facebook', 'Auth\AuthController@redirectToFacebook');
Route::get('auth/facebook/callback', 'Auth\AuthController@handleFacebookCallback');

//Register
//Route::get('auth/register', ['as' => 'getRegister', 'uses' => 'Auth\AuthController@getRegister']);
Route::post('auth/register', ['as' => 'postRegister', 'uses' => 'Auth\AuthController@postRegister']);

Route::get('refereshcapcha', 'HelperController@refereshCapcha');

Route::get('category/{id}',['as'=>'cate','uses'=>'ProductController@getProFollowCate']);
Route::post('category/{id}',['as'=>'postFilter','uses'=>'ProductController@getProductByFilter']);
//Route::get('category/{cate_id?}','ProductController@getSort');
//Route::get('category/{cate_id}/filter/{small}/{big}','ProductController@getFilter');

Route::get('product/{id}', 'ProductController@showDetail');
Route::post('product/quick-view', 'ProductController@quickView');

Route::post('cart/add', 'CartController@add');
Route::post('cart/delete', 'CartController@delete');
Route::post('cart/change', 'CartController@change');

Route::get('checkout', 'CheckoutController@getCheckout');
Route::post('checkout', 'CheckoutController@postCheckout');

Route::get('auth/register/verify/sendmail/{email}', 'Auth\AuthController@sendMailVerify');
Route::get('auth/register/verify/{confirmation_code}', 'Auth\AuthController@confirm');

Route::group(['middleware' => 'auth'], function() {
    Route::get('user/info', 'UserController@info');
    Route::post('user/save_user_info', 'UserController@save');
    Route::get('user/secure', 'UserController@secure');
    Route::post('user/change_pass', 'UserController@changePass');
    Route::get('user/order', 'UserController@order');
    Route::post('user/order/get-order-detail', 'UserController@getOrderDetail');
    Route::post('user/order/search', 'UserController@searchOrder');
});

Route::get('auth/password/email',['as' => 'getEmail', 'uses' => 'Auth\PasswordController@getEmail']);
Route::post('auth/password/email', 'Auth\PasswordController@postEmail');
Route::get('auth/password/reset/{token?}', 'Auth\PasswordController@getResetForm');
Route::post('auth/password/reset', 'Auth\PasswordController@postResetForm');

Route::get('getTags', 'HelperController@getTags');
Route::post('search', 'HelperController@search');

Route::post('checkexist/phone', 'HelperController@checkPhone');
Route::post('checkexist/email', 'HelperController@checkEmail');
Route::post('check/captcha', 'HelperController@checkCaptcha');
Route::post('get/district', 'HelperController@getDistrict');

Route::get('test-str', function(\App\Helper\HelperFunction $helper){
    return $helper->stripUnicode("Tôi tên là Hoàng Phúc Anh");
});
Route::get('/test/{id}', function ($id) {
    return App\User::find($id);
});

//----------------------- Admin zone -------------------------------//
Route::group(['prefix' => 'admin'], function(){
    Route::get('auth/login', ['as' => 'getLoginAdmin', 'uses' => 'Auth\AuthController@getLogin']);
    Route::post('auth/login', ['as' => 'postLoginAdmin', 'uses' => 'Auth\AuthController@postLoginAdmin']);
    Route::get('auth/logout', ['as' => 'logoutAdmin', 'uses' => 'Auth\AuthController@logoutAdmin']);

    Route::group(['prefix' => '/', 'middleware' => 'admin'], function() {
        Route::get('/', [
            'as' => 'admin.home',
            'uses' => 'HomeController@adminHomePage'
        ]);
        Route::get('/home', [
            'as' => 'admin.home',
            'uses' => 'HomeController@adminHomePage'
        ]);


        //delete a size or color
        Route::delete('sizecolor/deletesize/{id}', [
            'as' => 'admin.sizecolor.deleteSize',
            'uses' => 'ProductController@deleteSize'
        ]);

        Route::delete('sizecolor/deletecolor/{id}', [
            'as' => 'admin.sizecolor.deleteColor',
            'uses' => 'ProductController@deleteColor'
        ]);
        //show all sizes and colors
        Route::get('sizecolor', [
            'as' => 'sizecolor',
            'uses' => 'ProductController@getSizeColor'
        ]);
        //insert new size
        Route::post('newsize', [
            'as' => 'admin.product.newSize',
            'uses' => 'ProductController@newSize'
        ]);
        //insert new category
        Route::post('newcat', [
            'as' => 'admin.category.newCatParent',
            'uses' => 'CategoryController@newCatParent'
        ]);
        //insert new color
        Route::post('newcolor', [
            'as' => 'admin.product.newColor',
            'uses' => 'ProductController@newColor'
        ]);

        //insert, edit, update, delete products
        Route::resource('category', 'CategoryController');
        //insert, edit, update, delete products
        Route::resource('product', 'ProductController');
        //delete detail images
        Route::post('product/deleteimage',  ['as' => 'admin.product.deleteimage', 'uses' => 'ProductController@getDelImage']);
        Route::post('product/search_color', [
            'as' => 'admin.product.getColor',
            'uses' => 'ProductController@getColor'
        ]);


        Route::group(['prefix' => 'order'], function(){
            Route::get('list', [
                'as' => 'admin.order.list',
                'uses' => 'OrderController@getList'
            ]);
            Route::get('detail/{id}', [
                'as' => 'admin.order.detail',
                'uses' => 'OrderController@getDetail'
            ]);
            Route::post('detail/{id}', [
                'as' => 'admin.order.detail',
                'uses' => 'OrderController@postChange'
            ]);
            Route::get('edit/{id}', [
                'as' => 'admin.order.edit',
                'uses' => 'OrderController@getEdit'
            ]);
            Route::post('edit/{id}', [
                'as' => 'admin.order.edit',
                'uses' => 'OrderController@postEdit'
            ]);
            Route::get('add', ['as' =>
                'admin.order.add',
                'uses' => 'OrderController@getAdd'
            ]);
            Route::post('add', [
                'as' => 'admin.order.add',
                'uses' => 'OrderController@postAdd'
            ]);
            Route::post('pro_change', [
                'as' => 'admin.order.pro_change',
                'uses' => 'OrderController@proChange'
            ]);
            Route::post('search', [
                'as' => 'admin.order.search',
                'uses' => 'OrderController@searchItem'
            ]);
            Route::post('order_show', [
                'as' => 'admin.order.order_show',
                'uses' => 'OrderController@orderShow'
            ]);
        });

        Route::group(['prefix' => 'customer'], function(){
            Route::get('list', [
                'as' => 'admin.customer.list',
                'uses' => 'CustomerController@getList'
            ]);
            Route::get('edit/{id}', [
                'as' => 'admin.customer.edit',
                'uses' => 'CustomerController@getEdit'
            ]);
            Route::post('edit/{id}', [
                'as' => 'admin.customer.edit',
                'uses' => 'CustomerController@postEdit'
            ]);
            Route::get('add', [
                'as' => 'admin.customer.add',
                'uses' => 'CustomerController@getAdd'
            ]);
            Route::post('add', [
                'as' => 'admin.customer.add',
                'uses' => 'CustomerController@postAdd'
            ]);
            Route::get('delete/{id}', [
                'as' => 'admin.customer.delete',
                'uses' => 'CustomerController@getDelete'
            ]);
            Route::post('district', [
                'as' => 'admin.customer.district',
                'uses' => 'CustomerController@getDistrict'
            ]);
        });
    });
});

