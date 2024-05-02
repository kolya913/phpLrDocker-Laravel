@extends('layout')

@section('title', 'Product Details')

@section('content')

<div class="container product">
 @if(isset($product))
 <div class="row">
   <div class="col-md-6">
     <img src="{{ $product->photo }}" alt="{{ $product->name }}" class="img-fluid">
   </div>
   <div class="col-md-6">
     <h2>{{ $product->name }}</h2>
     <p>{{ $product->description }}</p>
     <p><strong>Цена: </strong> {{ $product->price }}$</p>
   </div>
 </div>
 @else
 <div class="alert alert-warning" role="alert">
   Продукт не найден.
 </div>
 @endif
</div>

@endsection
