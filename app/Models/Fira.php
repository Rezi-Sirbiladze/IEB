<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Fira extends Model
{
    protected $table = 'firas';

    public function institut()
    {
        return $this->belongsTo('App\Models\Institut', 'id', 'id_institut');
    }

    public function activitat_fira()
    {
        return $this->hasMany('App\Models\Activitat_fira', 'id_fira', 'id');
    }
}
