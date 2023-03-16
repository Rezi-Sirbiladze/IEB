<?php

namespace App\Http\Controllers;

use App\Models\Activitat_fira;
use Illuminate\Http\Request;

class FiraController extends Controller
{
    public function index()
    {
        $activitats_fira = Activitat_fira::All();
        return view('index', compact('activitats_fira'));
    }
}
