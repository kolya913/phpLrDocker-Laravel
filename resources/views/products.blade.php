@extends('layout')

@section('title', 'Products')

@section('content')

<div class="container products">
 <div class="row">
   @foreach($products as $product)
   <div class="col-xs-18 col-sm-6 col-md-3 mb-4">
     <div class="card h-100"> 
       <img class="card-img-top" src="{{ $product->photo }}" alt="Card image cap" style="height: 200px; object-fit: cover;">
       <div class="card-body d-flex flex-column"> 
         <h5 class="card-title">{{ $product->name }}</h5>
         <p class="card-text">{{ Str::limit(strtolower($product->description), 50) }}</p>
         <p><strong>Цена: </strong> {{ $product->price }}$</p>
         <div class="mt-auto"> 
           <a href="{{ url('cart/add/'.$product->id) }}" class="btn btn-warning">Добавить в корзину</a>
           <a href="{{ url('products/edit/'.$product->id.'') }}" class="btn btn-primary mt-2">Редактировать</a>
           <a href="{{ url('show/'.$product->id) }}" class="btn btn-info mt-2">Информация</a>
           <form action="{{ url('products/'.$product->id) }}" method="POST" class="mt-2">
             @csrf
             @method('DELETE')
             <div class="mt-auto">
                <button class="btn btn-danger delete-product" data-product-id="{{ $product->id }}" data-product-name="{{ $product->name }}">Удалить</button>
            </div>
           </form>
         </div>
       </div>
     </div>
   </div>
   @endforeach
 </div>
</div>

@endsection

@section('scripts')
<script>
  const deleteButtons = document.querySelectorAll('.delete-product');

  deleteButtons.forEach(button => {
      button.addEventListener('click', function(event) {
          event.preventDefault();

          const confirmDelete = confirm('Вы уверены, что хотите удалить этот продукт?');

          if (confirmDelete) {
              this.form.submit();
          }
      });
  });
</script>

@endsection
