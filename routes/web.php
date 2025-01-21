<?php

use App\Http\Controllers\AccountController;
use App\Http\Controllers\AdminLoginController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\RegisterController;
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

Route::get("dashboard/welcome",[DashboardController::class,"index"])->name("dashboard.welcome");

Route::get('/account/login', [AccountController::class, 'index'])->name('login');

Route::post('dashboard/auth/accountlogin/loginstore', [AccountController::class, 'loginstore'])->name('dashboard.auth.accountlogin.loginstore');
Route::post('accountlogin/logout', [AccountController::class, 'logout'])->name('accountlogin.logout');

Route::get('dashboard/auth/register', [RegisterController::class, 'index'])->name('dashboard.auth.register');
Route::post('dashboard/auth/register/store', [RegisterController::class, 'store'])->name('dashboard.auth.register.store');

Route::get('welcome', function () {
    return view('dashboard.welcome');
})->middleware('auth'); // Only authenticated users can access
