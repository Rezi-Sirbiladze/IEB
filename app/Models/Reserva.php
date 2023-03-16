<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    protected $table = 'reservas';


    public function usuari()
    {
        return $this->belongsTo('App\User', 'id', 'id_usuari');
    }
}
