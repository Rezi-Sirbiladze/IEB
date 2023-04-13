<?php

namespace App\Http\Controllers;

use App\Models\Activitat;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

use App\Models\Activitat_fira;
use App\Models\Fira;
use App\Models\Reserva;


class FiraController extends Controller
{
    public function index()
    {
        $fira = Fira::first();
        $activitats = Activitat::all();
        $activitats_fira = Activitat_fira::All();
        return view('index', compact('activitats_fira', 'activitats', 'fira'));
    }

    public function reservar(Request $request)
    {
        if (!Auth::check()) {
            return route('login');
        }

        if (count(Auth::user()->reseva) == 5) {
            return $error[] = ['ja tens activitats reservats'];
        } else if (count(Auth::user()->reseva) > 0) {
            Reserva::where('id_usuari', Auth::id())->delete();
            return $error[] = ['Si us plau torna a reservar les activitats'];
        }

        $isReservar = true;
        $noPlaces[] = ['Activitats sense places:'];
        $activitats_reservas = [];

        foreach ($request->activitat_fira_id as $key => $activitat_fira_id) {
            $activitat_fira = Activitat_fira::find($activitat_fira_id);
            if (count($activitat_fira->reserva) < $activitat_fira->places) {
                $activitats_reservas[$key] = [
                    'id_activitat_fira' => $activitat_fira->id,
                    'id_usuari' => Auth::id(),
                    'created_at' => Carbon::now(),
                ];
            } else {
                $isReservar = false;
                $noPlaces[] = [$activitat_fira->hora_inici . ' ' .  $activitat_fira->activitat->nom,];
            }
        }

        if ($isReservar) {
            $activitat_fira_obligatorio = Activitat_fira::select('id')->where('id_activitat', 1)->first();
            $activitats_reservas[] = [
                'id_activitat_fira' => $activitat_fira_obligatorio->id,
                'id_usuari' => Auth::id(),
                'created_at' => Carbon::now(),
            ];
            foreach ($activitats_reservas as $activitat_reserva) {
                Reserva::insert($activitat_reserva);
            }
            return route('home');
        }

        return $noPlaces;
    }

    public function modal_valorar(Request $request)
    {
        $reserva = Reserva::find($request->id_reserva);
        return view('modals.valorar', compact('reserva'));
    }

    public function update_valorar(Request $request)
    {
        Reserva::where('id', $request->id_reserva)->update(['valoracio' => $request->valoracio+1, 'comentari' => $request->comentari]);
    }

    public function informes(Request $request)
    {
        $activitat_fira = Activitat_fira::find($request->id);
        return view('informes_result', compact('activitat_fira'));
    }
    public function all_informes(Request $request)
    {
        $activitat_fira = Activitat_fira::all();
        return view('informes_all_result', compact('activitat_fira'));
    }
}
