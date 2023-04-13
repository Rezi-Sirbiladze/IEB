<div class="modal-header">
    <h5 class="modal-title" id="valorar_actividad">Valorar</h5>
    <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <form id="form_valorar_actividad" action="{{ route('update_valorar') }}" method="POST">
        @csrf
        <input type="hidden" name="id_reserva" id="id_reserva" value="{{ $reserva->id }}">
        <div class="rating-box">
            <header>Valoració</header>
            <div class="stars">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
            </div>
        </div>
        <br>
        <div class="rating-box">
            <header>Comentari</header>
            <textarea id="valoracio_comentari" name="valoracio_comentari" rows="4" maxlength="200"
            @if ($reserva->comentari) value="{{ $reserva->comentari }}" @endif>
            @if ($reserva->comentari) {{ $reserva->comentari }} @endif
            </textarea>
        </div>
    </form>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">Tancar</button>
    <button id="submit_form_valorar_actividad" class="btn btn-primary">Valorar</button>
</div>


<script>
    // icons star
    var stars = document.querySelectorAll(".stars i");
    var valoracio = 0;
    stars.forEach((star, index1) => {
        star.addEventListener("click", () => {
            stars.forEach((star, index2) => {
                index1 >= index2 ? star.classList.add("active") : star.classList.remove("active");
            });
            valoracio = index1;
        });
    });
    //* icons star

    // submit_form_valorar_actividad
    var submit_form_valorar_actividad = document.getElementById("submit_form_valorar_actividad");
    submit_form_valorar_actividad.addEventListener('click', function() {
        var parametros = {
            "_token": "{{ csrf_token() }}",
            "id_reserva": document.getElementById("id_reserva").value,
            "comentari": document.getElementById("valoracio_comentari").value,
            "valoracio": valoracio,
        };
        $.ajax({
            data: parametros,
            url: '{{ url(route('update_valorar')) }}',
            type: 'POST',
            success: function(response) {
                //console.log(response);
                location.reload();
            }
        });
    });
    //* submit_form_valorar_actividad
</script>
