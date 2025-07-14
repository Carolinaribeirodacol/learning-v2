@extends('admin.layouts.app')

@section('title', 'Detalhes do Usuário')

@section('content')
@include('admin.users.partials.breadcrumb')
<div class="py-6">
    <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight mb-4">
        Detalhes do Usuário {{ $user->name }}
    </h2>
</div>
<ul class="max-w-md space-y-1 text-gray-500 list-disc list-inside dark:text-gray-400 mb-6">
    <li>Nome: {{ $user->name }}</li>
    <li>E-mail: {{ $user->email }}</li>
</ul>
<x-alert></x-alert>

@can('is-admin')
    <form action="{{ route('users.destroy', $user->id) }}" method="post">
        @csrf
        @method('delete')
        <button type="submit">Deletar</button>
    </form>
@endcan
@endsection
