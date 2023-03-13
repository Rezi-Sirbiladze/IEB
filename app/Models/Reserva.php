<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    protected $table = 'reservas';


    public function usuari()
    {
        return $this->belongsTo('App\Models\Usuari', 'id', 'id_usuari');
    }
}
