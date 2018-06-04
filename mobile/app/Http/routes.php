<?php

Route::group(['middleware' => ['web']], function () {

	// Home
	Route::get('/', [
		// 'uses' => 'HomeController@index', 
		'uses' => 'ProductPoolController@getProductPool',
		'as' => 'home'
	]);
	Route::get('language/{lang}', 'HomeController@language')->where('lang', '[A-Za-z_-]+');


	// Admin
	Route::get('admin', [
		'uses' => 'AdminController@admin',
		'as' => 'admin',
		'middleware' => 'admin'
	]);

	Route::get('medias', [
		'uses' => 'AdminController@filemanager',
		'as' => 'medias',
		'middleware' => 'redac'
	]);


	// Blog
	Route::get('blog/order', ['uses' => 'BlogController@indexOrder', 'as' => 'blog.order']);
	Route::get('articles', 'BlogController@indexFront');
	Route::get('blog/tag', 'BlogController@tag');
	Route::get('blog/search', 'BlogController@search');

	Route::put('postseen/{id}', 'BlogController@updateSeen');
	Route::put('postactive/{id}', 'BlogController@updateActive');

	Route::resource('blog', 'BlogController');

	// Comment
	Route::resource('comment', 'CommentController', [
		'except' => ['create', 'show']
	]);

	Route::put('commentseen/{id}', 'CommentController@updateSeen');
	Route::put('uservalid/{id}', 'CommentController@valid');


	// Contact
	Route::resource('contact', 'ContactController', [
		'except' => ['show', 'edit']
	]);


	// User
	Route::get('user/sort/{role}', 'UserController@indexSort');

	Route::get('user/roles', 'UserController@getRoles');
	Route::post('user/roles', 'UserController@postRoles');

	Route::put('userseen/{user}', 'UserController@updateSeen');

	Route::resource('user', 'UserController');

	// Authentication routes...
	Route::get('auth/login', 'Auth\AuthController@getLogin');
	Route::post('auth/login', 'Auth\AuthController@postLogin');
	Route::get('auth/logout', 'Auth\AuthController@getLogout');
	Route::get('auth/confirm/{token}', 'Auth\AuthController@getConfirm');

	// Resend routes...
	Route::get('auth/resend', 'Auth\AuthController@getResend');

	// Registration routes...
	Route::get('auth/register', 'Auth\AuthController@getRegister');
	Route::post('auth/register', 'Auth\AuthController@postRegister');

	// Password reset link request routes...
	Route::get('password/email', 'Auth\PasswordController@getEmail');
	Route::post('password/email', 'Auth\PasswordController@postEmail');

	// Password reset routes...
	Route::get('password/reset/{token}', 'Auth\PasswordController@getReset');
	Route::post('password/reset', 'Auth\PasswordController@postReset');

	//Product
	Route::get('san-pham', 'ProductPoolController@getProductPool');
	Route::get('san-pham/tao-moi', 'ProductPoolController@filterProduct');

	Route::get('san-pham/delete/{id}', 'ProductPoolController@delete');
	
	Route::get('chi-tiet-san-pham/{id}', 'ProductPoolController@getDetail');

	Route::get('tao-moi', 'ProductAddController@getProduct');
	Route::post('tao-moi', 'ProductAddController@addProduct');

	//Product

	//employee
	Route::get('nhan-vien', 'EmployeeController@getShow');
	Route::get('nhan-vien/{id}', 'EmployeeAddController@getDetailEmployee');
	Route::post('nhan-vien/tao-moi', 'EmployeeAddController@addEmployee');
	Route::get('nhan-vien/delete/{id}', 'EmployeeController@delete');
	//employee

	//customer
	Route::get('khach-hang', 'CustomerController@getShow');
	Route::get('khach-hang/{id}', 'CustomerAddController@getDetail');
	Route::post('khach-hang/tao-moi', 'CustomerAddController@addCustomer');
	//customer

	//bill
	Route::get('hoa-don', 'BillController@getShow');
	Route::get('hoa-don/{id}', 'BillController@getDetail');
	Route::post('hoa-don/tao-moi', 'BillController@addBill');
	//
});

