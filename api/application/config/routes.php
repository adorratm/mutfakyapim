<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'welcome';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

/**
 * Admin Panel Routes
 */
$route['panel/login'] = 'backend/AuthController/login';
$route['panel/register'] = 'backend/AuthController/register';
$route['panel/current-user'] = 'backend/AuthController/currentUser';

// SETTINGS
$route['panel/settings/(:num)'] = 'backend/SettingsController/$1';
$route['panel/settings/save'] = 'backend/SettingsController/save';
$route['panel/settings/update/(:num)'] = 'backend/SettingsController/update/$1';
$route['panel/settings/delete'] = 'backend/SettingsController/delete';
$route['panel/settings/delete/(:num)'] = 'backend/SettingsController/delete/$1';

// EMAIL SETTINGS
$route['panel/email-settings/(:num)'] = 'backend/EmailSettingsController/$1';
$route['panel/email-settings/save'] = 'backend/EmailSettingsController/save';
$route['panel/email-settings/update/(:num)'] = 'backend/EmailSettingsController/update/$1';
$route['panel/email-settings/delete'] = 'backend/EmailSettingsController/delete';
$route['panel/email-settings/delete/(:num)'] = 'backend/EmailSettingsController/delete/$1';

// USERS
$route['panel/users'] = 'backend/UsersController';
$route['panel/users/(:num)'] = 'backend/UsersController/$1';
$route['panel/users/save'] = 'backend/UsersController/save';
$route['panel/users/update/(:num)'] = 'backend/UsersController/update/$1';
$route['panel/users/delete'] = 'backend/UsersController/delete';
$route['panel/users/delete/(:num)'] = 'backend/UsersController/delete/$1';

// USER ROLES
$route['panel/user-roles'] = 'backend/UserRolesController';
$route['panel/user-roles/(:num)'] = 'backend/UserRolesController/$1';
$route['panel/user-roles/save'] = 'backend/UserRolesController/save';
$route['panel/user-roles/update/(:num)'] = 'backend/UserRolesController/update/$1';
$route['panel/user-roles/delete'] = 'backend/UserRolesController/delete';
$route['panel/user-roles/delete/(:num)'] = 'backend/UserRolesController/delete/$1';

// MENUS
$route['panel/menus'] = 'backend/MenusController';
$route['panel/menus/(:num)'] = 'backend/MenusController/$1';
$route['panel/menus/save'] = 'backend/MenusController/save';
$route['panel/menus/update/(:num)'] = 'backend/MenusController/update/$1';
$route['panel/menus/delete'] = 'backend/MenusController/delete';
$route['panel/menus/delete/(:num)'] = 'backend/MenusController/delete/$1';

// PRODUCT CATEGORIES
$route['panel/product-categories'] = 'backend/ProductCategoriesController';
$route['panel/product-categories/(:num)'] = 'backend/ProductCategoriesController/$1';
$route['panel/product-categories/save'] = 'backend/ProductCategoriesController/save';
$route['panel/product-categories/update/(:num)'] = 'backend/ProductCategoriesController/update/$1';
$route['panel/product-categories/delete'] = 'backend/ProductCategoriesController/delete';
$route['panel/product-categories/delete/(:num)'] = 'backend/ProductCategoriesController/delete/$1';

// PRODUCTS SETTINGS
$route['panel/products/(:num)'] = 'backend/productsController/$1';
$route['panel/products/save'] = 'backend/productsController/save';
$route['panel/products/update/(:num)'] = 'backend/productsController/update/$1';
$route['panel/products/delete'] = 'backend/productsController/delete';
$route['panel/products/delete/(:num)'] = 'backend/productsController/delete/$1';