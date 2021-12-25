<?php 

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\user;

class Produk extends Model{
	protected $table = 'produk';


	public function seller()
	{
		return $this->belongsTo(User::class, 'id_user');
	}
}
