<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Absensi extends Model
{
    use HasFactory;
    protected $table = 'absensis';
    protected $fillable = [
        'id_absensi', 'id_siswa', 'nama', 'id_guru', 'materi','perteuanke', 'tanggal', 'id_jamPel', 'waktu', 'status'
    ];
}
