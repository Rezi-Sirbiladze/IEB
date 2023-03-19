<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reserva;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $reservas = Reserva::where('id_usuari', Auth::id())
            ->join('activitats_firas', 'reservas.id_activitat_fira', '=', 'activitats_firas.id')
            ->orderBy('activitats_firas.hora_inici')
            ->select('reservas.*')
            ->get();

        return view('home', compact('reservas'));
    }
}
