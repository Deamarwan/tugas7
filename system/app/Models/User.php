<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use App\Models\UserDetails;
use App\Models\Produk;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $table = "user";


    public function detail()
    {
        return $this->hasOne(UserDetail::class, 'id_user');
    }

    public function produk()
    {
        return $this->hasMany(Produk::class, 'id_user');
    }
    
}
