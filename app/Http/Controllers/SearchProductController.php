<?php

namespace App\Http\Controllers;
use App\Models\Product;
use Illuminate\Http\Request;

class SearchProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        
        try {
            $search_product = $request->search_product;
            
            if($search_product){
                $products = Product::with('detailProduct', 'detailGambarProduct', 'toko')->where('nama_product','like', "%$search_product%")->get();
            }else{
                $products = Product::with('detailProduct', 'detailGambarProduct', 'toko')->get();
            }
            
            // Mengarahkan ke halaman produk dengan data produk
            return response()->view("user.search-product", compact(['products', 'search_product']));
        } catch (\Exception $e) {
            // Tangani kesalahan umum
            return redirect()->back()->with('error', 'An error occurred.');
        }
    }

}
