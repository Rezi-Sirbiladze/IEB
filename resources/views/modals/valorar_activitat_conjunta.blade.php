<div class="modal-header">
    <h5 class="modal-title" id="valorar_actividad">Valorar</h5>
    <button type="button" class="btn-close" data-mdb-dismiss="modal" aria-label="Close"></button>
</div>
<div class="modal-body">
    <div class="rating-box">
        <header>Finalment et demanarem que valors d'1 a 5 estrelles els següents aspectes i et deixem un espai on poder
            comentar el que creguis necessari.</header>
    </div>
    <br>
    <form id="form_valorar_actividad" action="{{ route('update_valorar') }}" method="POST">
        @csrf
        <input type="hidden" name="id_reserva" id="id_reserva" value="{{ $reserva->id }}">
        <div class="rating-box">
            <header>Com valores el procés d'inscripció? Et va resultar fàcil i intuïtiu?</header>
            <div class="stars stars0">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
            </div>
        </div>
        <br>
        <div class="rating-box">
            <header>Com valores l'accés a les instal·lacions de la Fira i la distribució dels espais per a cada
                activitat?</header>
            <div class="stars stars1">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
            </div>
        </div>
        <br>
        <div class="rating-box">
            <header>Com valores l'atenció rebuda pels organitzadors durant la jornada?</header>
            <div class="stars stars2">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
            </div>
        </div>
        <br>
        <div class="rating-box">
            <header>Com valores la varietat d'activitats de la Fira?</header>
            <div class="stars stars3">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
            </div>
        </div>
        <br>
        <div class="rating-box">
            <header>Com valores la qualitat dels tècnics que impartien les activitats?</header>
            <div class="stars stars4">
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
                <i class="fa-solid fa-star"></i>
            </div>
        </div>
        <br>
        <div class="rating-box">
            <header>Finalment, et deixem un espai on poder expressar el que necessitis afegir, ja siguin idees de
                millora o comentar-nos alguna cosa que no t'hagi agradat o el que més t'ha sorprès del dia. </header>
            <textarea id="valoracio_comentari" name="valoracio_comentari" rows="4" maxlength="200"
                @if ($reserva->comentari) value="{{ $reserva->comentari }}" @endif>
            @if ($reserva->comentari)
{{ $reserva->comentari }}
@endif
            </textarea>
        </div>
    </form>
</div>
<div class="modal-footer">
    <button type="button" class="btn btn-secondary" data-mdb-dismiss="modal">Tancar</button>
    <button id="submit_form_valorar_actividad" class="btn btn-primary">Valorar</button>
</div>


<script>
    // icons star0
    var stars0 = document.querySelectorAll(".stars0 i");
    var valoracio0 = 0;
    stars0.forEach((star, index1) => {
        star.addEventListener("click", () => {
            stars0.forEach((star, index2) => {
                index1 >= index2 ? star.classList.add("active") : star.classList.remove(
                    "active");
            });
            valoracio0 = index1;
        });
    });
    //* icons star0

    // icons star1
    var stars1 = document.querySelectorAll(".stars1 i");
    var valoracio1 = 0;
    stars1.forEach((star, index1) => {
        star.addEventListener("click", () => {
            stars1.forEach((star, index2) => {
                index1 >= index2 ? star.classList.add("active") : star.classList.remove(
                    "active");
            });
            valoracio1 = index1;
        });
    });
    //* icons star1

    // icons star2
    var stars2 = document.querySelectorAll(".stars2 i");
    var valoracio2 = 0;
    stars2.forEach((star, index1) => {
        star.addEventListener("click", () => {
            stars2.forEach((star, index2) => {
                index1 >= index2 ? star.classList.add("active") : star.classList.remove(
                    "active");
            });
            valoracio2 = index1;
        });
    });
    //* icons star2

    // icons star3
    var stars3 = document.querySelectorAll(".stars3 i");
    var valoracio3 = 0;
    stars3.forEach((star, index1) => {
        star.addEventListener("click", () => {
            stars3.forEach((star, index2) => {
                index1 >= index2 ? star.classList.add("active") : star.classList.remove(
                    "active");
            });
            valoracio3 = index1;
        });
    });
    //* icons star3

    // icons star4
    var stars4 = document.querySelectorAll(".stars4 i");
    var valoracio4 = 0;
    stars4.forEach((star, index1) => {
        star.addEventListener("click", () => {
            stars4.forEach((star, index2) => {
                index1 >= index2 ? star.classList.add("active") : star.classList.remove(
                    "active");
            });
            valoracio4 = index1;
        });
    });
    //* icons star4

    // submit_form_valorar_actividad
    var submit_form_valorar_actividad = document.getElementById("submit_form_valorar_actividad");
    submit_form_valorar_actividad.addEventListener('click', function() {
        var parametros = {
            "_token": "{{ csrf_token() }}",
            "id_reserva": document.getElementById("id_reserva").value,
            "comentari": document.getElementById("valoracio_comentari").value,
            "valoracio0": valoracio0,
            "valoracio1": valoracio1,
            "valoracio2": valoracio2,
            "valoracio3": valoracio3,
            "valoracio4": valoracio4,
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
