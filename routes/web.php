<?php

use App\Http\Controllers\CartController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductsController;


Route::get('/', [ProductsController::class, 'index']);
Route::get('/products/create', [ProductsController::class, 'create']);
Route::post('/products/create', [ProductsController::class, 'store']);
Route::get('/products/edit/{id}', [ProductsController::class, 'edit']);
Route::put('/products/{id}', [ProductsController::class, 'update']);
Route::delete('/products/{id}', [ProductsController::class, 'destroy']);
Route::get('/show/{id}', [ProductsController::class, 'show']);



Route::get('/cart', [CartController::class, 'index']);
Route::get('/cart/add/{id}', [CartController::class, 'add']);
Route::post('/cart/remove/{id}', [CartController::class, 'remove']);
Route::post('/cart/clear', [CartController::class, 'clear']);
Route::post('/cart/update/{id}', [CartController::class, 'update']);





?>