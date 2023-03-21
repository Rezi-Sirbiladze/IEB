<div class="modal-header">
    <h5 class="modal-title" id="valorar_actividad">Valorar</h5>
    <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <form id="form_valorar_actividad" action="{{ route('update_valorar') }}" method="POST">
        @csrf
        <input type="hidden" name="id_reserva" value="{{ $reserva->id }}">
        <div class="form-outline mb-4">
            <input type="number" id="valoracio" name="valoracio" class="form-control" min="1" max="5"
                @if ($reserva->valoracio) value="{{ $reserva->valoracio }}" @endif required />
            <label class="form-label" for="valoració">Valoració</label>
        </div>

        <div class="form-outline mb-4">
            <textarea class="form-control" id="comentari" name="comentari" rows="4" maxlength="200"
                @if ($reserva->comentari) value="{{ $reserva->comentari }}" @endif>@if($reserva->comentari){{ $reserva->comentari }}@endif</textarea>
            <label class="form-label" for="comentari">Comentari</label>
        </div>
    </form>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">Tancar</button>
    <button type="submit" id="" form="form_valorar_actividad" class="btn btn-primary">Valorar</button>
</div>
