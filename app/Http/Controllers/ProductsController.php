<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Redis;

class ProductsController extends Controller
{
    public function index()
    {
        $cacheKey = 'products.all';
        $cachedProducts = Redis::get($cacheKey);

        if ($cachedProducts) {
            $products = json_decode($cachedProducts);
        } else {
            $products = Product::all();

            Redis::setex($cacheKey, 60, json_encode($products));
        }

        return view('products', compact('products'));
    }

    public function create()
    {
        return view('product_create');
    }

    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|min:1',
            'price' => 'required|numeric|min:0.01'
        ]);
    
        $product = new Product;
        $product->name = $validatedData['name'];
        $product->description = $request->description;
        $product->photo = $request->photo;
        $product->price = $validatedData['price'];
        $product->save();
    
        Redis::del('products.all');
        return redirect('/')->with('success', 'Продукт успешно создан!');
    }
    

    public function edit($id)
    {
        if (!is_numeric($id) || intval($id) != $id) {
            abort(404);
        }
        $product = Product::find($id);
        if (!$product) {
            abort(404);
        }
        return view('product_edit', compact('product'));
    }

    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'name' => 'required|min:1',
            'price' => 'required|numeric|min:0.01'
        ]);
    
        $product = Product::find($id);
        if (!$product) {
            abort(404);
        }
    
        $product->name = $validatedData['name'];
        $product->description = $request->description;
        $product->photo = $request->photo;
        $product->price = $validatedData['price'];
        $product->save();

        Redis::del('products.all');
        return redirect('/');
    }
    

    public function destroy($id)
    {
        if (!is_numeric($id) || intval($id) != $id) {
            abort(404);
        }
    
        $product = Product::findOrFail($id);
        $product->delete();
    
        Redis::del('products.all');
        Redis::del("products.{$id}");

        return redirect('/');
    }
    

    public function show($id)
    {
        if (!is_numeric($id) || intval($id) != $id) {
            abort(404);
        }

        $product = Redis::get("products.{$id}");

        if (!$product) {
            $product = Product::findOrFail($id);
            Redis::setex("products.{$id}", 60, serialize($product));
        } else {
            $product = unserialize($product);
        }

        if (!$product) {
            abort(404);
        }

        return view('product_show', compact('product'));
    }
}
