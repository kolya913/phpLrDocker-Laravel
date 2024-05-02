@extends('layout')

@section('title', 'Edit Product')

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

<form action="/products/{{ $product->id }}" method="post">
    @csrf
    @method('PUT')
    <div class="form-group">
        <label for="name">Название</label>
        <input type="text" class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}" id="name" name="name" value="{{ old('name', $product->name) }}">
        @if($errors->has('name'))
            <div class="invalid-feedback">
                {{ $errors->first('name') }}
            </div>
        @endif
    </div>
    <div class="form-group">
        <label for="description">Описание</label>
        <textarea class="form-control" id="description" name="description">{{ old('description', $product->description) }}</textarea>
    </div>
    <div class="form-group">
        <label for="photo">Фото URL</label>
        <input type="text" class="form-control" id="photo" name="photo" value="{{ old('photo', $product->photo) }}">
    </div>
    <div class="form-group">
        <label for="price">Цена</label>
        <input type="number" step="0.01" class="form-control {{ $errors->has('price') ? 'is-invalid' : '' }}" id="price" name="price" value="{{ old('price', $product->price) }}">
        @if($errors->has('price'))
            <div class="invalid-feedback">
                {{ $errors->first('price') }}
            </div>
        @endif
    </div>
    <button type="submit" class="btn btn-primary">СОхранить</button>
</form>
@endsection
