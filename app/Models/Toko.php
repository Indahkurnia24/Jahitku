<?php

namespace App\Models;

use App\Models\Product;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Toko extends Model
{
    use HasFactory;

    protected $fillable = [
        'alamat_toko',
        'kota',
        'kecamatan',
        'provinsi',
        'kode_pos',
    ];

    public function product()
    {
        return $this->hasMany(Product::class, 'id_toko');
    }
     public function user()
    {
        return $this->belongsTo(User::class);
    }
}
