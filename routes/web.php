<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', 'TrainController@index')->name('home');

Route::get('/carriage{id}', 'CarriageController@index')->name('carriage');
Route::get('/seat{id}', 'SeatController@index')->name('seat');
Route::post('/price', 'SeatController@price')->name('price');
Route::post('/checkout', 'SeatController@reservation');
