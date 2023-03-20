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
                    <a class="nav-link" {{ Route::currentRouteNamed('/') ? 'style=color:#3b71ca;' : '' }}
                        href="{{ route('/') }}">Fira
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" {{ Route::currentRouteNamed('Ieb/vehiculos') ? 'style=color:#3b71ca;' : '' }}
                        href="">Contacte
                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" {{ Route::currentRouteNamed('Ieb/profesores') ? 'style=color:#3b71ca;' : '' }}
                        href="">Informació
                    </a>
                </li>

                <li class="nav-item mx-4">
                    <div class="dropdown">
                        <a class="dropdown-toggle d-flex align-items-center hidden-arrow" href="#"
                            id="navbarDropdownMenuAvatar" role="button" data-mdb-toggle="dropdown"
                            aria-expanded="false">
                            <img @if (Auth::check()) src="https://placedog.net/120/120" @else src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Black_from_a_camera.jpg/1200px-Black_from_a_camera.jpg" @endif
                                class="rounded-circle" height="40" width="40"
                                alt="Black and White Portrait of a Man" loading="lazy" />
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuAvatar">
                            @if (Route::has('login'))
                                @auth
                                    <li>
                                        <a class="dropdown-item"
                                            {{ Route::currentRouteNamed('/home') ? 'style=color:#3b71ca;' : '' }}
                                            href="{{ url('/home') }}">Tauler
                                        </a>
                                        <a class="dropdown-item" href="{{ route('logout') }}"
                                            onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                                            {{ __('Sortida') }}
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                            style="display: none;">
                                            @csrf
                                        </form>
                                    </li>
                                @else
                                    <li>
                                        <a class="dropdown-item"
                                            {{ Route::currentRouteNamed('login') ? 'style=color:#3b71ca;' : '' }}
                                            href="{{ route('login') }}">Entrada</a>
                                    </li>
                                @endauth
                            @endif
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
