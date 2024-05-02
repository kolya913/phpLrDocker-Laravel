<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class CartController extends Controller
{
    public function add(Request $request, $id)
    {
        if (!is_numeric($id) || intval($id) != $id) {
            abort(404);
        }
    
        $product = Product::findOrFail($id);
    
        $cart = session()->get('cart', []);
    
        if (isset($cart[$id])) {
            $cart[$id]++;
        } else {
            $cart[$id] = 1;
        }
    
        session()->put('cart', $cart);
    
        return redirect()->back();
    }
    

    public function index()
    {
        $cart = session()->get('cart');
        $products = [];

        if($cart) {
            $ids = array_keys($cart);
            $products = Product::findMany($ids)->keyBy('id')->toArray();

            foreach($cart as $id => $quantity) {
                if(isset($products[$id])) {
                    $products[$id]['quantity'] = $quantity;
                }
            }
        }

        return view('cart_index', ['products' => $products]);
    }


    public function remove(Request $request, $id)
    {
        if (!is_numeric($id) || intval($id) != $id) {
            abort(404);
        }

        $cart = session()->get('cart');

        if(isset($cart[$id])) {
            unset($cart[$id]);
            session()->put('cart', $cart);
        }

        return redirect()->back();
    }

    public function clear()
    {
        session()->forget('cart');
        return redirect()->back();
    }

    public function update(Request $request, $id)
    {
        if (!is_numeric($id) || intval($id) != $id) {
            abort(404);
        }
    
        $product = Product::findOrFail($id);
    
        $cart = session()->get('cart', []);
    
        if(isset($cart[$id])) {
            if($request->has('change')) {
                if($request->input('change') === 'increase') {
                    $cart[$id]++;
                } elseif($request->input('change') === 'decrease') {
                    $cart[$id]--;
                    if($cart[$id] <= 0) {
                        unset($cart[$id]);
                    }
                }
            }
        }
    
        session()->put('cart', $cart);
    
        return redirect()->back();
    }

}
