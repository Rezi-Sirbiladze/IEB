<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Activitat_fira extends Model
{
    protected $table = 'activitats_firas';

    public function fira()
    {
        return $this->belongsTo('App\Models\Fira', 'id', 'id_fira');
    }

    public function activitat()
    {
        return $this->hasOne('App\Models\Activitat', 'id', 'id_activitat');
    }

    public function reserva()
    {
        return $this->hasMany('App\Models\Reservas', 'id_activitat_fira', 'id');
    }
}
