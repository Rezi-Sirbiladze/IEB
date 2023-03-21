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

Route::get('login', 'HomeController@index')->name('home');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
