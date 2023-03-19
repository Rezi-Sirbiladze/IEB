<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Usuari extends Model
{
    protected $table = 'usuaris';

    public function rol()
    {
        return $this->belongsToMany('App\Models\Rol');
    }

    public function reseva()
    {
        return $this->hasMany('App\Models\Reserva', 'id_usuari', 'id');
    }
}
