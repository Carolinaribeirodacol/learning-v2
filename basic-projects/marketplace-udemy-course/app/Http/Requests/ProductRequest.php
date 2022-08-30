<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Regras de validação do Request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required',
            'description' => 'required|min:30',
            'body' => 'required',
            'price' => 'required',
        ];
    }

    // Tradução dos campos de validação.
    public function messages() {
        return [
            'required' => 'Este campo :attribute é obrigatório.',
            'min' => "O Campo deve ter no mínimo :min caracteres."
        ];
    }
}
