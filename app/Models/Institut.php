<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Institut extends Model
{
    protected $table = 'instituts';

    public function firas()
    {
        return $this->hasMany('App\Models\Fira', 'id_institut', 'id');
    }
}
