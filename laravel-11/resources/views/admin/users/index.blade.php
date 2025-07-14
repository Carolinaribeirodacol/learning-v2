@extends('admin.layouts.app')
@section('title', 'Usuários')

@section('content')
<h1>Usuários</h1>

<a href="{{ route('users.create') }}">Novo usuário</a>

<x-alert />

<table>
    <thead>
        <tr>
            <th>Nome</th>
            <th>Email</th>
            <th>Ações</th>
        </tr>
    </thead>

    <tbody>
        <!-- É como se fosse um foreach mas consegue ver se não tem nenhum valor e retornar uma mensagem -->
        @forelse ($users as $user)
        <tr>
            <td>{{ $user->name }}</td>
            <td>{{ $user->email }}</td>
            <td>
                <a href="{{ route('users.edit', $user->id) }}">Edit</a>
                <a href="{{ route('users.show', $user->id) }}">Show</a>
            </td>
        </tr>
        @empty
        <tr>
            <td colspan="100">Nenhum usuário no banco</td>
        </tr>
        @endforelse
    </tbody>
</table>

{{ $users->links() }}
@endsection
