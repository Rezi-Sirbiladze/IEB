@extends('layouts.layout')
@section('title', '')
@section('content')

    @if ($errors->any())
        <div id="toast">
            <div id="img"><i class="fas fa-hands-helping"></i></div>
            <div id="desc">{{ $errors->first() }}</div>
        </div>
        <script>
            var x = document.getElementById("toast")
            x.className = "show";
            setTimeout(function() {
                x.className = x.className.replace("show", "");
            }, 5000);
        </script>
    @endif

    <h1>IEB</h1>


    <div class="card mt-2">
        <div class="card-body">
            <h5 class="card-title">9:00 a 9:30</h5>
            <p class="card-text">Check in / Benvinguda</p>
        </div>
    </div>


    <div class="row mt-2">
        <div class="col-sm-3 mt-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">9:30 a 10:15</h5>
                    @foreach ($activitats_fira->where('hora_inici', '09:30:00') as $activitat_fira)
                        <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-sm-3 mt-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">10:30 a 11:15</h5>
                    @foreach ($activitats_fira->where('hora_inici', '10:30:00') as $activitat_fira)
                        <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-sm-3 mt-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">11:30 a 12:15</h5>
                    @foreach ($activitats_fira->where('hora_inici', '11:30:00') as $activitat_fira)
                        <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-sm-3 mt-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">12:30 a 13:15</h5>
                    @foreach ($activitats_fira->where('hora_inici', '12:30:00') as $activitat_fira)
                        <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    <div class="card mt-4">
        <div class="card-body">
            <h5 class="card-title">13:30 a 14:00</h5>
            @foreach ($activitats_fira->where('hora_inici', '13:30:00') as $activitat_fira)
                <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
            @endforeach
        </div>
    </div>
@endsection
