<style>
    .nav-item a {
        color: rgb(73, 73, 73);
        cursor: pointer;
        position: relative;
        border: none;
        background: none;
        text-transform: uppercase;
        transition-timing-function: cubic-bezier(0.25, 0.8, 0.25, 1);
        transition-duration: 400ms;
        transition-property: color;
    }

    .nav-item .active {
        font-weight: bold;
    }

    .nav-item a:focus,
    .nav-item a:hover {
        color: #3b71ca;
    }

    .nav-item a:focus:after,
    .nav-item a:hover:after {
        width: 100%;
        left: 0%;
    }

    .nav-item a:after {
        content: "";
        pointer-events: none;
        bottom: -2px;
        left: 50%;
        position: absolute;
        width: 0%;
        height: 2px;
        background-color: #3b71ca;
        transition-timing-function: cubic-bezier(0.25, 0.8, 0.25, 1);
        transition-duration: 400ms;
        transition-property: width, left;
    }
</style>


<nav class="navbar navbar-expand-lg navbar-light sticky-top bg-light">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-mdb-toggle="collapse" data-mdb-target="#navbarTogglerIeb"
            aria-controls="navbarTogglerIeb" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse justify-content-center" id="navbarTogglerIeb">
            <ul class="navbar-nav mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link"
                        {{ Route::currentRouteNamed('Ieb/crear_practicas_formulario') ? 'style=color:#3b71ca;' : '' }}
                        href="">Fira
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" {{ Route::currentRouteNamed('Ieb/vehiculos') ? 'style=color:#3b71ca;' : '' }}
                        href="">Vehículos
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" {{ Route::currentRouteNamed('Ieb/profesores') ? 'style=color:#3b71ca;' : '' }}
                        href="">Profesores
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                        {{ Route::currentRouteNamed('Ieb/horario_practicas') ? 'style=color:#3b71ca;' : '' }}
                        href="">Horario de prácticas
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                        {{ Route::currentRouteNamed('Ieb/lista_practicas_reservadas') ? 'style=color:#3b71ca;' : '' }}
                        href="">Lista de reservas
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
