@extends('layouts.layout')
@section('title', 'Login')
@section('content')

    <style>
        .form_container {
            width: fit-content;
            height: fit-content;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 15px;
            background-color: #ffffff;
            box-shadow: 0px 106px 42px rgba(0, 0, 0, 0.01),
                0px 59px 36px rgba(0, 0, 0, 0.05), 0px 26px 26px rgba(0, 0, 0, 0.09),
                0px 7px 15px rgba(0, 0, 0, 0.1), 0px 0px 0px rgba(0, 0, 0, 0.1);
            border-radius: 11px;
            font-family: "Inter", sans-serif;
        }


        .logo_container img {
            box-sizing: border-box;
            width: 80px;
            height: 80px;
            background: linear-gradient(180deg, rgba(248, 248, 248, 0) 50%, #F8F8F888 100%);
            border: 1px solid #F7F7F8;
            filter: drop-shadow(0px 0.5px 0.5px #EFEFEF) drop-shadow(0px 1px 0.5px rgba(239, 239, 239, 0.5));
            border-radius: 11px;
        }

        .title_container {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .title {
            margin: 0;
            font-size: 1.25rem;
            font-weight: 700;
            color: #212121;
        }

        .subtitle {
            font-size: 0.725rem;
            max-width: 80%;
            text-align: center;
            line-height: 1.1rem;
            color: #8B8E98
        }

        .input_container {
            width: 100%;
            height: fit-content;
            position: relative;
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .icon {
            width: 20px;
            position: absolute;
            z-index: 99;
            left: 14px;
            bottom: 12px;
        }

        .input_label {
            font-size: 0.75rem;
            color: #8B8E98;
            font-weight: 600;
        }

        .input_field {
            width: auto;
            height: 40px;
            padding: 0 0 0 40px;
            border-radius: 7px;
            outline: none;
            border: 1px solid #e5e5e5;
            filter: drop-shadow(0px 1px 0px #efefef) drop-shadow(0px 1px 0.5px rgba(239, 239, 239, 0.5));
            transition: all 0.3s cubic-bezier(0.15, 0.83, 0.66, 1);
        }

        .input_field:focus {
            border: 1px solid transparent;
            box-shadow: 0px 0px 0px 2px #242424;
            background-color: transparent;
        }

        .sign-in_btn {
            width: 100%;
            height: 40px;
            border: 0;
            background: #115DFC;
            border-radius: 7px;
            outline: none;
            color: #ffffff;
            cursor: pointer;
        }

        .sign-in_ggl {
            width: 100%;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            background: #ffffff;
            border-radius: 7px;
            outline: none;
            color: #242424;
            border: 1px solid #e5e5e5;
            filter: drop-shadow(0px 1px 0px #efefef) drop-shadow(0px 1px 0.5px rgba(239, 239, 239, 0.5));
            cursor: pointer;
        }

        .sign-in_apl {
            width: 100%;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            background: #212121;
            border-radius: 7px;
            outline: none;
            color: #ffffff;
            border: 1px solid #e5e5e5;
            filter: drop-shadow(0px 1px 0px #efefef) drop-shadow(0px 1px 0.5px rgba(239, 239, 239, 0.5));
            cursor: pointer;
        }

        .separator {
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 30px;
            color: #8B8E98;
        }

        .separator .line {
            display: block;
            width: 100%;
            height: 1px;
            border: 0;
            background-color: #e8e8e8;
        }

        .note {
            font-size: 0.75rem;
            color: #8B8E98;
            text-decoration: underline;
        }
    </style>

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

    <h1>Login</h1>

    <div class="row">
        <div class="col">
            <form class="form_container p-4 mt-4 mx-auto" action="{{ route('login') }}" method="POST">
                @csrf
                <div class="logo_container"><img src="https://placekitten.com/120/120"></div>
                <div class="title_container">
                    <p class="title">Inicieu sessió al vostre compte</p>
                </div>
                <br>
                <div class="input_container">
                    <label class="input_label" for="email_field">Correu electrònic</label>
                    <i class="icon fas fa-envelope"></i>
                    <input id="email" type="email" class="input_field @error('email') is-invalid @enderror"
                        name="email" value="{{ old('email') }}" required>
                </div>
                <div class="input_container">
                    <label class="input_label" for="password_field">Contrasenya</label>
                    <i class="icon fas fa-unlock-alt"></i>
                    <input id="password" type="password" class="input_field @error('password') is-invalid @enderror"
                        name="password" required>
                </div>
                <button title="Sign In" type="submit" class="sign-in_btn">
                    <span>Inicieu la sessió</span>
                </button>
            </form>
        </div>
        <div class="col">
            <form class="form_container p-4 mt-4 mx-auto" action="{{ route('register') }}" method="POST">
                @csrf
                <div class="logo_container"><img src="https://placekitten.com/120/120"></div>
                <div class="title_container">
                    <p class="title">Crear nou compte</p>
                </div>
                <br>
                <div class="input_container">
                    <label class="input_label" for="email_field">nom complet</label>
                    <i class="icon fas fa-user"></i>
                    <input id="name" type="text" class="input_field @error('name') is-invalid @enderror"
                        name="name" value="{{ old('name') }}" required>
                </div>

                <div class="input_container">
                    <label class="input_label" for="email_field">Correu electrònic</label>
                    <i class="icon fas fa-envelope"></i>

                    <input id="email" type="email" class="input_field @error('email') is-invalid @enderror"
                        name="email" value="{{ old('email') }}" required>
                </div>
                <div class="input_container">
                    <label class="input_label" for="password_field">Contrasenya</label>
                    <i class="icon fas fa-unlock-alt"></i>
                    <input id="password" type="password" class="input_field @error('password') is-invalid @enderror"
                        name="password" required>
                </div>
                <div class="input_container">
                    <label class="input_label" for="password_field">Contrasenya</label>
                    <i class="icon fas fa-unlock-alt"></i>
                    <input id="password-confirm" type="password" class="input_field" name="password_confirmation" required>
                </div>
                <button title="Sign In" type="submit" class="sign-in_btn">
                    <span>Inicieu la sessió</span>
                </button>
            </form>
        </div>
    </div>

@endsection
