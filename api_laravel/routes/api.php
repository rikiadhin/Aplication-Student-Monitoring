<?php

use App\Http\Controllers\AbsensiController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\GuruController;
use App\Http\Controllers\JadwalController;
use App\Http\Controllers\MateriTugasController;
use App\Http\Controllers\OrangTuaController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

// API USER
Route::get('/users', [UserController::class, 'index']);
Route::get('/users/{{id}}', [UserController::class, 'show']);
Route::post('/users', [UserController::class, 'store']);
Route::put('/users/{id}', [UserController::class, 'update']);
Route::get('/users/{id}', [UserController::class, 'destroy']);
Route::get('/users/getbyEmail/{email}', [UserController::class, 'getbyEmail']);

// API SISWA
Route::get('/siswa', [SiswaController::class, 'index']);
Route::get('/siswa/{id}', [SiswaController::class, 'show']);
Route::post('/siswa', [SiswaController::class, 'store']);
Route::put('/siswa/{id}', [SiswaController::class, 'update']);
Route::get('/siswa/{id}', [SiswaController::class, 'destroy']);

Route::get('/siswaID', [SiswaController::class, 'getid']);

Route::get('/siswa/joinJadwal/{email}', [SiswaController::class, 'getsiswabyKelas']);

// API GURU
Route::get('/guru', [GuruController::class, 'index']);
Route::get('/guru/{email}', [GuruController::class, 'getbyEmail']);

// API ORANG TUA
Route::get('/orangtua', [OrangTuaController::class, 'index']);

// API JADWAL
Route::get('/jadwal', [JadwalController::class, 'index']);
Route::get('/jadwal/{mapel}/{jampel}', [JadwalController::class, 'getJadwal']);
Route::get('/getJadwalGuru/{email}', [JadwalController::class, 'getJadwalGuru']);

// API MATERI TUGAS
Route::get('/materitugas', [MateriTugasController::class, 'index']);

// API ABSENSI
Route::get('/absensi', [AbsensiController::class, 'index']);
Route::get('/absensi/{mapel}/{jampel}', [AbsensiController::class, 'getAbsensi']);
Route::get('/absensi/{mapel}/{email}', [AbsensiController::class, 'getAbsensiGuru']);


// API RAPORT
