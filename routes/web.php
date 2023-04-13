<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'FiraController@index')->name('/');
Route::post('reservar', 'FiraController@reservar')->name('reservar');
Route::post('modal_valorar', 'FiraController@modal_valorar')->name('modal_valorar');
Route::post('update_valorar', 'FiraController@update_valorar')->name('update_valorar');
Route::get('informes/{id}', 'FiraController@informes')->name('informes');
Route::get('all_informes', 'FiraController@all_informes')->name('all_informes');

Route::get('login', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
