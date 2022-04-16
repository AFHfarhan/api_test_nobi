<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::prefix('v1')->group(function () {
    Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
        return $request->user();
    });

    //API route for register new user
    Route::post('/register', [App\Http\Controllers\Api\v1\AuthController::class, 'register']);
    //API route for login user
    Route::group(['middleware' => ['throttle:api']], function () {
        Route::post('/login', [App\Http\Controllers\Api\v1\AuthController::class, 'login']);
    });

    Route::group(['middleware' => ['auth:sanctum']], function () {
        Route::get('/profile', function(Request $request) {
            return response()->json(['data' => auth()->user(), 'valid' => auth()->check() ]) ;
        });

        Route::get('/quote', [App\Http\Controllers\Api\v1\MyController::class, 'getRequest']);
        Route::get('/quote/detail', [App\Http\Controllers\Api\v1\MyController::class, 'getRequestParam']);
        Route::post('/transaction', [App\Http\Controllers\Api\v1\MyController::class, 'store']);
        Route::post('/price/upload', [App\Http\Controllers\Api\v1\MyController::class, 'store_docs']);

        // API route for logout user
        Route::post('/logout', [App\Http\Controllers\Api\v1\AuthController::class, 'logout']);
    });
});