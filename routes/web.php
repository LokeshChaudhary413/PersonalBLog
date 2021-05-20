<?php

use App\Http\Controllers\ContactController;
use App\Http\Controllers\BlogController;
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
    return view('index');
});
Route::post('process',[ContactController::class, 'insert'])->name('process');
Route::get('contact',[ContactController::class, 'fetch']);
// Blog Routes
Route::get('blog',[BlogController::class, 'fetch']);   // Listing Page
Route::get('add_post',[BlogController::class, 'manage_blog']);  //add form
Route::get('post/{id}',[BlogController::class, 'fullPost']);           //edit form
Route::post('manage_blog_process',[BlogController::class, 'manage_blog_process'])->name('manage_blog_process');  // edit/add from submit
// Route::get('blog/status/{status}/{id}',[BlogController::class, 'status']);
// Route::get('delete/{id}',[BlogController::class, 'delete']);

