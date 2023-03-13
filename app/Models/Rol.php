<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rol extends Model
{
    protected $table = 'rols';


    public function usuari()
    {
        return $this->belongsToMany('App\Models\Usuari');
    }
}
