<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MateriTugas extends Model
{
    use HasFactory;
    protected $table = 'materi_tugas';
    protected $fillable = [
        'id_mt', 'nama', 'id_jamPel', 'jenis', 'waktu_mulai', 'waktu_selesai'
    ];
}
