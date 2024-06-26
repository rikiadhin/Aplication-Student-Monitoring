<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Siswa extends Model
{
    use HasFactory;
    protected $table = 'siswas';
    protected $fillable = [
        'id_siswa', 'nama','email', 'password', 'id_kelas', 'nomor', 'waliKelas', 'alamat'
    ];
}
