<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Log extends Model
{
    protected $table = 'log_kelompok';
   protected $fillable = ['judul','des','waktu_perubahan'];
}
