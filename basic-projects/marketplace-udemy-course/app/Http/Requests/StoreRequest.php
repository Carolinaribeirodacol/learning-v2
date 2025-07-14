<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    { 
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name' => 'required|string',
            'description' => 'required|min:10',
            'phone' => 'number',
            'mobile_phone' => 'required|number',
        ];
    }

    public function messages() {
        return [
            'required' => "Este campo :attribute é obrigatório.",
            'min' => "O Campo deve ter no mínimo :min caracteres."
        ];
    }
}
