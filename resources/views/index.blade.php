@extends('layouts.layout')
@section('title', 'Fira')
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
            <h5 class="card-title">FIRA</h5>
            <p class="card-text">{{ $fira->descripcio }}</p>
        </div>
    </div>


    <section id="hiddenPanel" class="txt-highlight-color bg-color bg-pattern">
        <span id="close-bar" class="myButton"><i class="fas fa-calendar-check"></i></span>
        <button class="btn btn-primary" id="btn_reservar">Reservar</button>
        <div id="hiddenPanel_contenido"></div>
    </section>

    <div class="card mt-4">
        <div class="card-body">
            <h5 class="card-title">9:00 a 9:30</h5>
            <p class="card-text">Check in / Benvinguda</p>
        </div>
    </div>


    <div class="row mt-2">
        <div class="col-sm-3 mt-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><b>1 | 9:30 a 10:15</b></h5>
                    @foreach ($activitats_fira->where('hora_inici', '09:30:00') as $activitat_fira)
                        <div class="divcheckbox">
                            <label class="divcheckboxNoSelect" for="{{ $activitat_fira->id }}">
                                <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                                <p class="card-text">{{ count($activitat_fira->reserva) }} / {{ $activitat_fira->places }}</p>
                                <input type="checkbox" name="activitats" id="{{ $activitat_fira->id }}"
                                    data-activitat_fira_id="{{ $activitat_fira->id }}"
                                    data-activitat_fira_id_activitat="{{ $activitat_fira->id_activitat }}"
                                    data-activitat_fira_hora_inici="{{ $activitat_fira->hora_inici }}"
                                    data-activitat_fira_activitat_nom="{{ $activitat_fira->activitat->nom }}">
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-sm-3 mt-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><b>2 | 10:30 a 11:15</b></h5>
                    @foreach ($activitats_fira->where('hora_inici', '10:30:00') as $activitat_fira)
                        <div class="divcheckbox">
                            <label class="divcheckboxNoSelect" for="{{ $activitat_fira->id }}">
                                <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                                <p class="card-text">{{ count($activitat_fira->reserva) }} / {{ $activitat_fira->places }}</p>
                                <input type="checkbox" name="activitats" id="{{ $activitat_fira->id }}"
                                    data-activitat_fira_id="{{ $activitat_fira->id }}"
                                    data-activitat_fira_id_activitat="{{ $activitat_fira->id_activitat }}"
                                    data-activitat_fira_hora_inici="{{ $activitat_fira->hora_inici }}"
                                    data-activitat_fira_activitat_nom="{{ $activitat_fira->activitat->nom }}">
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-sm-3 mt-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><b>3 | 11:30 a 12:15</b></h5>
                    @foreach ($activitats_fira->where('hora_inici', '11:30:00') as $activitat_fira)
                        <div class="divcheckbox">
                            <label class="divcheckboxNoSelect" for="{{ $activitat_fira->id }}">
                                <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                                <p class="card-text">{{ count($activitat_fira->reserva) }} / {{ $activitat_fira->places }}</p>
                                <input type="checkbox" name="activitats" id="{{ $activitat_fira->id }}"
                                    data-activitat_fira_id="{{ $activitat_fira->id }}"
                                    data-activitat_fira_id_activitat="{{ $activitat_fira->id_activitat }}"
                                    data-activitat_fira_hora_inici="{{ $activitat_fira->hora_inici }}"
                                    data-activitat_fira_activitat_nom="{{ $activitat_fira->activitat->nom }}">
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="col-sm-3 mt-2">
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title"><b>4 | 12:30 a 13:15</b></h5>
                    @foreach ($activitats_fira->where('hora_inici', '12:30:00') as $activitat_fira)
                        <div class="divcheckbox">
                            <label class="divcheckboxNoSelect" for="{{ $activitat_fira->id }}">
                                <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                                <p class="card-text">{{ count($activitat_fira->reserva) }} / {{ $activitat_fira->places }}</p>
                                <input type="checkbox" name="activitats" id="{{ $activitat_fira->id }}"
                                    data-activitat_fira_id="{{ $activitat_fira->id }}"
                                    data-activitat_fira_id_activitat="{{ $activitat_fira->id_activitat }}"
                                    data-activitat_fira_hora_inici="{{ $activitat_fira->hora_inici }}"
                                    data-activitat_fira_activitat_nom="{{ $activitat_fira->activitat->nom }}">
                            </label>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>

    <div class="card mt-4">
        <div class="card-body">
            <h5 class="card-title">13:30 a 14:00</h5>
            <?php $activitat_fira = $activitats_fira->where('hora_inici', '13:30:00')->first(); ?>
            <div class="divcheckbox">
                <label id="activitats_obligatoria" class="divcheckboxNoSelect" for="{{ $activitat_fira->id }}">
                    <p>{{ $activitat_fira->activitat->nom }}</p>
                </label>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-md-12 mb-4">
            <div class="card">
                <div class="m-4">
                    <h5>Ens veiem en Complex Esportiu La Bàscula</h5>
                    <p>Carrer del Foc, 132, 08004 Barcelona</p>
                </div>
                <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                    <img src="{{ asset('img/mapa.png') }}" class="img-fluid" style="height: 600px;" />
                    <a href="#!">
                        <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)">
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="row mt-4">
        @foreach ($activitats as $activitat)
            <div class="col-md-6 mb-4">
                <div class="card">
                    <div class="bg-image hover-overlay ripple" data-mdb-ripple-color="light">
                        <img src="{{ asset('img/' . $activitat->imatge . '') }}" class="img-fluid"
                            style="height: 300px; @if ($activitat->imatge != 'Design - Option C.png') width: -webkit-fill-available; @endif" />
                        <a href="#!">
                            <div class="mask" style="background-color: rgba(251, 251, 251, 0.15)">
                            </div>
                        </a>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title"><b>{{ $activitat->nom }}</b></h5>
                        <p class="card-text">
                            {{ $activitat->descripcio }}
                        </p>
                    </div>
                </div>
            </div>
        @endforeach
    </div>



    <!-- Modal -->
    <div class="modal fade" id="errorModal" tabindex="-1" aria-labelledby="errorModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="errorModalLabel">Error</h5>
                    <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
                </div>
                <div id="errorModalContent" class="modal-body">...</div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">Tancar</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        // btn_reservar
        let btn_reservar = document.getElementById("btn_reservar");
        btn_reservar.addEventListener('click', function() {
            if (activitat_fira_id.length < 4) {
                const errorModal = document.getElementById('errorModal');
                const modal = new mdb.Modal(errorModal);
                const errorModalContent = document.getElementById('errorModalContent');
                errorModalContent.innerHTML =
                    'És obligatori apuntar-se en 4 activitats + Actividad conjuta obligatori.';
                modal.show()
                return null;
            }
            var parametros = {
                "_token": "{{ csrf_token() }}",
                "activitat_fira_id": activitat_fira_id,
            };
            $.ajax({
                data: parametros,
                url: '{{ url(route('reservar')) }}',
                type: 'POST',
                success: function(response) {
                    console.log(response);
                    if (typeof response == 'object') {
                        const errorModal = document.getElementById('errorModal');
                        const modal = new mdb.Modal(errorModal);
                        const errorModalContent = document.getElementById('errorModalContent');
                        let mensaje = '';
                        response.forEach(element => {
                            mensaje = mensaje + element + '<br>';
                        });
                        errorModalContent.innerHTML = mensaje;
                        modal.show()
                    } else {
                        window.location.href = response;
                    }

                }
            });
        });
        //* btn_reservar
    </script>
@endsection
