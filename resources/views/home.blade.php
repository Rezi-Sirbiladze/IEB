@extends('layouts.layout')
@section('title', 'Alumne')
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

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Dashboard</div>

                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row">
                            @foreach ($reservas as $reserva)
                                <div class="col-md-6 mb-4">
                                    <div class="card">
                                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                            <img src="https://placedog.net/400/400" class="img-fluid" />
                                            <a href="#!">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="card-header">{{ $reserva->activitat_fira->hora_inici }}</div>
                                        <div class="card-body">
                                            <h5 class="card-title">{{ $reserva->activitat_fira->activitat->nom }}</h5>
                                            <p class="card-text">
                                                Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ad inventore nulla
                                                error iusto amet veniam, pariatur ratione magni, fugiat molestiae, at
                                                assumenda ea dolor. Ex similique a tempora! Quae, quos!
                                            </p>

                                            <button type="button" class="btn btn-primary">Valorar</button>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
