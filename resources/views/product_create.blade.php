@extends('layout')

@section('title', 'Create Product')

@section('content')
@if($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<form action="/products/create" method="post">
    @csrf
    <div class="form-group">
        <label for="name">Название</label>
        <input type="text" class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}" id="name" name="name" value="{{ old('name') }}">
        @if($errors->has('name'))
            <div class="invalid-feedback">
                {{ $errors->first('name') }}
            </div>
        @endif
    </div>
    <div class="form-group">
        <label for="description">Описание</label>
        <textarea class="form-control" id="description" name="description">{{ old('description') }}</textarea>
    </div>
    <div class="form-group">
        <label for="photo">Фото URL</label>
        <input type="text" class="form-control" id="photo" name="photo" value="{{ old('photo') }}">
    </div>
    <div class="form-group">
        <label for="price">Цена</label>
        <input type="number" step="0.01" class="form-control {{ $errors->has('price') ? 'is-invalid' : '' }}" id="price" name="price" value="{{ old('price') }}">
        @if($errors->has('price'))
            <div class="invalid-feedback">
                {{ $errors->first('price') }}
            </div>
        @endif
    </div>
    <button type="submit" class="btn btn-primary">Сохранить</button>
</form>
@endsection
