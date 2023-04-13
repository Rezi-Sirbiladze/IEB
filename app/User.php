<?php

namespace App;

use App\Models\Rol_user;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function rol()
    {
        return $this->belongsToMany('App\Models\Rol');
    }

    public function isAdmin()
    {
        return Rol_user::where('user_id', $this->id)->where('rol_id', 1)->first();
    }

    public function reseva()
    {
        return $this->hasMany('App\Models\Reserva', 'id_usuari', 'id');
    }
}
