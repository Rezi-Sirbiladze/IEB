<div class="row mt-2">
    <a href="{{ route('all_informes') }}" class="btn btn-primary" target="_blank">Veure tots els activitats</a>
    <div class="col-sm-3 mt-2">
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><b>1 | 9:30 a 10:15</b></h5>
                @foreach ($activitats_fira->where('hora_inici', '09:30:00') as $activitat_fira)
                    <div class="divcheckbox">
                        <label class="divcheckboxNoSelect" for="{{ $activitat_fira->id }}">
                            <p class="card-text">{{ $activitat_fira->activitat->nom }}</p>
                            <p class="card-text">{{ count($activitat_fira->reserva) }} / {{ $activitat_fira->places }}
                            </p>
                            <input type="checkbox" name="activitats_informe" id="{{ $activitat_fira->id }}"
                                data-activitat_fira_id="{{ $activitat_fira->id }}"
                                data-activitat_fira_id_activitat="{{ $activitat_fira->id_activitat }}"
                                data-activitat_fira_hora_inici="{{ $activitat_fira->hora_inici }}"
                                data-activitat_fira_activitat_nom="{{ $activitat_fira->activitat->nom }}">
                                <a href="{{ route('informes', $activitat_fira->id) }}" class="btn btn-primary" target="_blank">Veure</a>
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
                            <p class="card-text">{{ count($activitat_fira->reserva) }} / {{ $activitat_fira->places }}
                            </p>
                            <input type="checkbox" name="activitats_informe" id="{{ $activitat_fira->id }}"
                                data-activitat_fira_id="{{ $activitat_fira->id }}"
                                data-activitat_fira_id_activitat="{{ $activitat_fira->id_activitat }}"
                                data-activitat_fira_hora_inici="{{ $activitat_fira->hora_inici }}"
                                data-activitat_fira_activitat_nom="{{ $activitat_fira->activitat->nom }}">
                                <a href="{{ route('informes', $activitat_fira->id) }}" class="btn btn-primary" target="_blank">Veure</a>
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
                            <p class="card-text">{{ count($activitat_fira->reserva) }} / {{ $activitat_fira->places }}
                            </p>
                            <input type="checkbox" name="activitats_informe" id="{{ $activitat_fira->id }}"
                                data-activitat_fira_id="{{ $activitat_fira->id }}"
                                data-activitat_fira_id_activitat="{{ $activitat_fira->id_activitat }}"
                                data-activitat_fira_hora_inici="{{ $activitat_fira->hora_inici }}"
                                data-activitat_fira_activitat_nom="{{ $activitat_fira->activitat->nom }}">
                                <a href="{{ route('informes', $activitat_fira->id) }}" class="btn btn-primary" target="_blank">Veure</a>
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
                            <p class="card-text">{{ count($activitat_fira->reserva) }} / {{ $activitat_fira->places }}
                            </p>
                            <input type="checkbox" name="activitats_informe" id="{{ $activitat_fira->id }}"
                                data-activitat_fira_id="{{ $activitat_fira->id }}"
                                data-activitat_fira_id_activitat="{{ $activitat_fira->id_activitat }}"
                                data-activitat_fira_hora_inici="{{ $activitat_fira->hora_inici }}"
                                data-activitat_fira_activitat_nom="{{ $activitat_fira->activitat->nom }}">
                                <a href="{{ route('informes', $activitat_fira->id) }}" class="btn btn-primary" target="_blank">Veure</a>
                        </label>
                    </div>
                @endforeach
            </div>
        </div>
    </div>

    <div class="card mt-4">
        <div class="card-body">
            <?php $activitat_fira = $activitats_fira->where('hora_inici', '13:30:00')->first(); ?>
            <div class="divcheckbox">
                <label id="activitats_obligatoria" class="divcheckboxNoSelect" for="{{ $activitat_fira->id }}">
                    <p>{{ $activitat_fira->activitat->nom }}</p>
                    <a href="{{ route('informes', $activitat_fira->id) }}" class="btn btn-primary" target="_blank">Veure</a>
                </label>
            </div>
        </div>
    </div>
</div>