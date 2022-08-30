<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * Campos preenchíveis.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * Remove os atributos da listagem, para não serem visualizados.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * Converte o atributo para o tipo especificado.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime', // Converte para o tipo datetime.
    ];

    // Um usuário possui uma loja.
    public function store()
    {
        return $this->hasOne(Store::class);
    }
}
