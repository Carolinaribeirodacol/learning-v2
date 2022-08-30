<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'description',
        'body',
        'price',
        'slug'
    ];

    // Um produto pertence a uma loja.
    public function store()
    {
        return $this->belongsTo(Store::class);
    }

    // Um produto pertence a várias categorias.
    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }
}
