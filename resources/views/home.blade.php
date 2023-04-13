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
                    @if (Auth::user()->isAdmin('admin'))
                        <p>Yay! I'm Admin! 😎</p>

                        @include('partials.informes')
                    @endif
                    <div class="card-body">
                        @if (session('status'))
                            <div class="alert alert-success" role="alert">
                                {{ session('status') }}
                            </div>
                        @endif
                        <div class="row">
                            @if (count($reservas) < 1 && !Auth::user()->isAdmin('admin'))
                                <p>Sense reserves</p>
                                <a href="{{ route('/') }}" class="btn btn-primary">APUNTA'T</a>
                            @endif
                            @foreach ($reservas as $reserva)
                                <div class="col-md-6 mb-4">
                                    <div class="card">
                                        <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                                            <img src="{{ asset('img/' . $reserva->activitat_fira->activitat->imatge . '') }}"
                                                class="img-fluid"
                                                style="height: 300px; @if ($reserva->activitat_fira->activitat->imatge != 'Design - Option C.png') width: -webkit-fill-available; @endif"
                                                data-aos="fade-up" data-aos-anchor-placement="bottom-bottom" />
                                            <a href="#!">
                                                <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)">
                                                </div>
                                            </a>
                                        </div>
                                        <div class="card-header">{{ $reserva->activitat_fira->hora_inici }}</div>
                                        <div class="card-body">
                                            <h5 class="card-title">{{ $reserva->activitat_fira->activitat->nom }}</h5>
                                            <p class="card-text">
                                                @if ($reserva->valoracio)
                                                    <div class="stars_home">
                                                        @for ($i = 0; $i < $reserva->valoracio; $i++)
                                                            <i class="fa-solid fa-star active"></i>
                                                        @endfor
                                                    </div>
                                                    <hr>
                                                    <div class="form-outline">
                                                        <textarea class="form-control" id="comentari" name="comentari" rows="2" maxlength="200"
                                                            @if ($reserva->comentari) value="{{ $reserva->comentari }}" @endif readonly>{{ $reserva->comentari }}</textarea>
                                                        <label class="form-label" for="comentari">Comentari</label>
                                                    </div>
                                                @else
                                                    Sense valoració
                                                @endif
                                            </p>

                                            <button type="button" name="btn_valorar_reserva"
                                                data-id_reserva="{{ $reserva->id }}"
                                                class="btn btn-primary">Valorar</button>
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

    <!-- Remote source -->
    <div class="modal fade" id="modal_info_valorar" tabindex="-1" aria-labelledby="modal_info_valorar" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-content" id="response_content">
                </div>
            </div>
        </div>
    </div>


    <script>
        // Modal de valorar
        let btn_valorar_reserva = document.getElementsByName("btn_valorar_reserva");
        Array.from(btn_valorar_reserva).forEach(el =>
            el.addEventListener('click', function() {
                var parametros = {
                    "_token": "{{ csrf_token() }}",
                    "id_reserva": el.dataset.id_reserva,
                };
                var xhr = $.ajax({
                    data: parametros,
                    url: '{{ url(route('modal_valorar')) }}',
                    type: 'POST',
                    beforeSend: function() {
                        $("#modal_info_valorar").modal('show');
                        $('#response_content').html(
                            '<div class="p-5 h3 text-center text-dark"> <div class="loading"><span></span><span></span><span></span><span></span><span></span></div></div>'
                        );
                    },
                    success: function(response) {
                        setTimeout(function() {
                            $('#response_content').html(response);
                        }, 1100);
                    }
                });
            })
        );
        //* Modal de valorar
    </script>
@endsection
