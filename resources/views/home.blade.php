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

                                            <button type="button" name="btn_valorar_reserva"
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
                    "alumno_id": 'document.getElementById("alumno_id").value',
                    "practicasSelecciondas": 'practicasSelecciondas',
                    "id_licencia": 'id_licencia',
                };
                $.ajax({
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
                        $('#response_content').html(response);
                    }
                });
            })
        );
        //* Modal de valorar
    </script>
@endsection
