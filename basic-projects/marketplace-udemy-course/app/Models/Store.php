<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    use HasFactory;

    protected $fillable = [
        'user_id',
        'name',
        'phone',
        'mobile_phone',
        'slug',
        'description',
    ];

    // Uma loja pertence a um usuário.
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    // Uma loja possui um ou mais produtos.
    public function products()
    {
        return $this->hasMany(Product::class);
    }
}
