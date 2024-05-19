<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up() : void
    {
        Schema::create('siswas', function (Blueprint $table) {
            $table->id();
            $table->string('id_siswa')->unique();
            $table->string('name');
            $table->string('siswa');
            $table->string('password');
            $table->string('id_kelas');
            $table->string('nomor');
            $table->string('id_waliKelas');
            $table->string('alamat');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('siswas');
    }
};
