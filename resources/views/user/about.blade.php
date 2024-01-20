@extends('user.index-user')

@section('container')
    <section class="container">
        <div class="row my-5 rounded border border-black p-3">
            <div class="col-12 col-md-6">
                <img class="w-100 img-height banner-animation" src="{{ asset('image/about-us/undraw_About_us_page.png') }}"
                    alt="undraw_About_us_page.png">
            </div>
            <div class="col-12 col-md-6">
                <div class="row h-100 justify-content-center align-items-center">
                    <div class="col-12 text-center">
                        <h2 class="about-title">Apa Itu Jahitku ?</span></h2>
                        <p>Jahitku adalah layanan jasa jahit online yang menyediakan custom baju, permak, menegcilkan pakaian dan bisa konsultasi kapan saja.
                        </p>
                        <button type="button" class="btn btn-primary">Tampilkan Produk</button>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
