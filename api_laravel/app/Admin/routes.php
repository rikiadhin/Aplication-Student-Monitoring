<?php

use Illuminate\Routing\Router;
use App\Models\User;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
    'as'            => config('admin.route.prefix') . '.',
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('home');
    // $router->resource('/users', HoreController::class);
    $router->resource('/users', UserController::class);
    $router->resource('/gurus', GuruController::class);
    $router->resource('/orang-tuas', OrangtuaController::class);
    $router->resource('/absensis', AbsensiController::class);
    $router->resource('/jadwals', JadwalController::class);
    $router->resource('/jam-pels', JamPelController::class);
    $router->resource('/kelas', KelasController::class);
    $router->resource('/mapels', MapelController::class);
    $router->resource('/materi-tugas', MateriTugasController::class);
    $router->resource('/raports', RaportController::class);
    $router->resource('/siswas', SiswaController::class);

});
