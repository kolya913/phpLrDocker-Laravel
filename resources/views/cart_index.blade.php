@extends('layout')

@section('title', 'Корзина')

@section('content')
<div class="container mt-5">
    <h2>Корзина</h2>
    @if(!empty($products))
        <table class="table">
            <thead>
                <tr>
                    <th>Название</th>
                    <th>Количество</th>
                    <th>Цена</th>
                    <th>Фото</th>
                    <th>Действия</th>
                </tr>
            </thead>
            <tbody>
                @foreach($products as $product)
                    <tr>
                        <td>{{ $product['name'] }}</td>
                        <td>
                            <form action="{{ url('/cart/update/'.$product['id']) }}" method="POST" class="d-inline">
                                @csrf
                                <button type="submit" name="change" value="decrease" class="btn btn-danger btn-sm">-1</button>
                                {{ $product['quantity'] }}
                                <button type="submit" name="change" value="increase" class="btn btn-success btn-sm">+1</button>
                            </form>
                        </td>
                        <td>{{ $product['price'] }} $</td>
                        <td>
                            <img src="{{ $product['photo'] }}" class="img-thumbnail" alt="{{ $product['name'] }}" style="width: 100px; height: 100px;">
                        </td>
                        <td>
                            <form action="{{ url('/cart/remove/'.$product['id']) }}" method="POST" class="d-inline">
                                @csrf
                                <button type="submit" class="btn btn-danger btn-sm">Удалить</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        <form action="{{ url('/cart/clear') }}" method="POST">
            @csrf
            <button type="submit" class="btn btn-warning">Очистить корзину</button>
        </form>
    @else
        <p>Ваша корзина пуста.</p>
    @endif
</div>
@endsection
