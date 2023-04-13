<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://agora.xtec.cat/ins-esport/wp-content/uploads/usu2109/2023/01/Logo-IEB-300x129.png" alt="Backend" rel="shortcut icon" type="image/x-icon" />


    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.css" rel="stylesheet" />



    {{-- jQuery --}}
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>

    {{-- Slider --}}
    <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/js/splide.min.js"></script>

    {{-- DataTables --}}
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">

    <link rel="stylesheet" type="text/css"
        href="https://cdn.datatables.net/buttons/2.3.5/css/buttons.dataTables.min.css" />

    {{-- CSS --}}
    <link href="{{ asset('css/style.css') }}" rel="stylesheet" type="text/css">

    <title>IEB | @yield('title')</title>
</head>

<body>
    @include('layouts.nav')
    <section class="splide" aria-label="Slider">
        <div class="splide__track">
            <ul class="splide__list">
                <li class="splide__slide"><img src="{{ asset('img/logo-piel-de-mariposa.png') }}"
                        style="object-fit: scale-down"></li>
                <li class="splide__slide"><img src="{{ asset('img/foto 1.jpg') }}"></li>
                <li class="splide__slide"><img src="{{ asset('img/foto 3.jpg') }}"></li>
                <li class="splide__slide"><img src="{{ asset('img/foto 4.jpg') }}"></li>
                <li class="splide__slide"><img src="{{ asset('img/foto 9.jpg') }}"></li>
                <li class="splide__slide"><img src="{{ asset('img/Design - Option C.png') }}"
                        style="object-fit: contain"></li>
            </ul>
        </div>
    </section>
    <div class="parallax p-2">
        <div class="container">
            @yield('content')
        </div>
    </div>

    <footer class="container">
        <div class="row d-flex align-items-center justify-content-center">
            <div class="col-md-4 social-links mt-2">
                <div id="twitter" class="social-btn flex-center">
                    <a href="https://twitter.com/institut_esport" target="_blank"><i
                            class="fab fa-twitter fa-2x"></i></a>
                </div>

                <div id="facebook" class="social-btn flex-center">
                    <a href="https://www.facebook.com/insesportbcn" target="_blank"><i
                            class="fab fa-facebook-square fa-2x"></i></a>
                </div>


                <div id="youtube" class="social-btn flex-center">
                    <a href="https://www.youtube.com/@institutdelesportdebarcelo8904" target="_blank"><i
                            class="fab fa-youtube fa-2x"></i></a>
                </div>


                <div id="instagram" class="social-btn flex-center">
                    <a href="https://www.instagram.com/ins_esport_bcn/" target="_blank"><i
                            class="fab fa-instagram-square fa-2x"></i></i></a>
                </div>

            </div>
            <div class="col-md-4 text-center mt-2">
                <img src="https://agora.xtec.cat/ins-esport/wp-content/uploads/usu2109/2023/01/Logo-IEB-300x129.png"
                    class="img-fluid">
            </div>
            <div class="col-md-4 text-center mt-2">
                <p>
                    Institut de l'Esport de Barcelona
                    <br> Avinguda Francesc Ferrer i Guàrdia, 16
                    <br> 08038 Barcelona Codi de centre 08077137
                    <br> <a target="_blank" href="https://goo.gl/maps/jwz8ACQ7T6awvePL6">MAPA</a> | <a
                        href="https://agora.xtec.cat/ins-esport/l-institut/contacte/">CONTACTE</a>
                </p>
            </div>
        </div>
    </footer>


    {{-- JS --}}
    <script src="{{ asset('js/scripts.js') }}"></script>

    {{-- Slider --}}
    <link href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.1.4/dist/css/splide.min.css" rel="stylesheet">



    <!-- MDB -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.1.0/mdb.min.js"></script>

    {{-- DataTables --}}
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.13.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.5/js/dataTables.buttons.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.5/js/buttons.html5.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/2.3.5/js/buttons.print.min.js"></script>


    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var splide = new Splide('.splide', {
                type: 'loop',
                autoplay: true,

            });
            splide.mount();
        });
    </script>
</body>

</html>
