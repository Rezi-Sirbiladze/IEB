<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Reserva extends Model
{
    protected $table = 'reservas';


    public function usuari()
    {
        return $this->belongsTo('App\User', 'id_usuari', 'id');
    }

    public function activitat_fira()
    {
        return $this->belongsTo('App\Models\Activitat_fira', 'id_activitat_fira', 'id');
    }
}
