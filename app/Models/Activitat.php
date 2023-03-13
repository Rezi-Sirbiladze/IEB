<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Activitat extends Model
{
    protected $table = 'activitats';

    public function activitat_fira()
    {
        return $this->belongsToMany('App\Models\Activitat_fira', 'id_activitat', 'id');
    }
}
