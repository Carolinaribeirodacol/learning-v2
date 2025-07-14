<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'slug'
    ];

    // Uma categoria pertence a vários produtos.
    public function products()
    {
        // O laravel busca por padrão por category_products.
        return $this->belongsToMany(Product::class);
    }
}