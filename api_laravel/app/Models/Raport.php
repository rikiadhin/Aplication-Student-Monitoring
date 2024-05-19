<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Raport extends Model
{
    use HasFactory;
    protected $table = 'raports';
    protected $fillable = [
        'id_raport', 'id_siswa', 'id_guru', 'semester'
    ];
}
