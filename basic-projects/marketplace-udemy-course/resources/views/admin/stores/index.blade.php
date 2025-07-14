@extends('layouts.app')

@section('content')
<a class="btn btn-lg btn-success" href="{{ route('admin.stores.create') }}">Criar loja</a>
<table class="table table-striped">
    <thead>
        <tr>
            <th>#</th>
            <th>Loja</th>
            <th>Total de produtos</th>
            <th>Ações</th>
        </tr>
    </thead>

    <tbody>
        <tr>
            <td>{{$store->id}}</td>
            <td>{{$store->name}}</td>
            <td>{{$store->products->count()}}</td>
            <td>
                <a class="btn btn-sm btn-primary" href="{{ route('admin.stores.edit', ['store' => $store->id]) }}">Editar</a>
                <form action="{{ route('admin.stores.destroy', ['store' => $store->id]) }}">
                    @csrf
                    @method("DELETE")
                    <button type="submit" class="btn btn-sm btn-danger">REMOVER</button>
                </form>
            </td>
        </tr>
    </tbody>
</table>

@endsection('content')