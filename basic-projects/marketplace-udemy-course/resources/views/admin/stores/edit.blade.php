@extends('layouts.app')

@section('content')
<h1>Editar loja:</h1>

<form action="{{ route('admin.stores.update', ['store' => $store->id]) }}" method="POST">
    <input type="hidden" name="_token" value="{{ csrf_token() }}" />
    @csrf
    @method("PUT")

    <div class="form-group">
        <label>Loja</label>
        <input type="text" name="name" value="{{$store->name}}" class="form-control" />
    </div>

    <div class="form-group">
        <label>Descrição</label>
        <input type="text" name="description" value="{{$store->description}}" class="form-control" />
    </div>

    <div class="form-group">
        <label>Telefone</label>
        <input type="string" name="phone" value="{{$store->phone}}" class="form-control" />
    </div>

    <div class="form-group">
        <label>Celular</label>
        <input type="string" name="mobile_phone" value="{{$store->mobile_phone}}" class="form-control" />
    </div>

    <div class="form-group">
        <label>Slug</label>
        <input type="text" name="slug" value="{{$store->slug}}" class="form-control" />
    </div>

    <div style="margin-top: 15px">
        <button type="submit" class="btn btn-success">Atualizar loja</button>
    </div>
</form>
@endsection('content')