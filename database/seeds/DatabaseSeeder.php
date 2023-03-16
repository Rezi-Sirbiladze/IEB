<?php

use App\Models\Activitat;
use App\Models\Activitat_fira;
use App\Models\Institut;
use App\Models\Fira;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        Activitat::insert(array('nom' => 'Actividad conjuta', 'descripcio' => 'Actividad conjuta', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'FAMA', 'descripcio' => 'FAMA', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'WOD', 'descripcio' => 'WOD', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'BOXEO', 'descripcio' => 'BOXEO', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'CORE y TRX', 'descripcio' => 'CORE y TRX', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'Oposiciones', 'descripcio' => 'Oposiciones', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'Postural', 'descripcio' => 'Postural', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'Twerk', 'descripcio' => 'Twerk', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'By combat', 'descripcio' => 'By combat', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'Taller nutrició', 'descripcio' => 'Taller nutrició', 'created_at' => Carbon::now(),));

        Institut::insert(array(
            'nom' => "Institut de l'Esport de Barcelona",
            'direccio' => 'Avinguda Francesc Ferrer i Guàrdia, 16 08038 Barcelona Codi de centre 08077137',
            'mobil' => '93 153 74 24',
            'created_at' => Carbon::now(),
        ));

        Fira::insert(array(
            'id_institut' => 1,
            'nom' => 'Fira',
            'data' => '2023-04-21',
            'hora_inici' => '9:00',
            'hora_final' => '14:00',
            'created_at' => Carbon::now(),
        ));

        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 2,
            'data' => '2023-04-21',
            'hora_inici' => '9:30',
            'hora_final' => '10:15',
            'places' => 60,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 3,
            'data' => '2023-04-21',
            'hora_inici' => '9:30',
            'hora_final' => '10:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 4,
            'data' => '2023-04-21',
            'hora_inici' => '9:30',
            'hora_final' => '10:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 5,
            'data' => '2023-04-21',
            'hora_inici' => '9:30',
            'hora_final' => '10:15',
            'places' => 20,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 6,
            'data' => '2023-04-21',
            'hora_inici' => '9:30',
            'hora_final' => '10:15',
            'places' => 25,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 7,
            'data' => '2023-04-21',
            'hora_inici' => '9:30',
            'hora_final' => '10:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 9,
            'data' => '2023-04-21',
            'hora_inici' => '9:30',
            'hora_final' => '10:15',
            'places' => 60,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 10,
            'data' => '2023-04-21',
            'hora_inici' => '9:30',
            'hora_final' => '10:15',
            'places' => 15,
            'created_at' => Carbon::now(),
        ));

        // Cambio

        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 2,
            'data' => '2023-04-21',
            'hora_inici' => '10:30',
            'hora_final' => '11:15',
            'places' => 60,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 3,
            'data' => '2023-04-21',
            'hora_inici' => '10:30',
            'hora_final' => '11:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 4,
            'data' => '2023-04-21',
            'hora_inici' => '10:30',
            'hora_final' => '11:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 5,
            'data' => '2023-04-21',
            'hora_inici' => '10:30',
            'hora_final' => '11:15',
            'places' => 20,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 6,
            'data' => '2023-04-21',
            'hora_inici' => '10:30',
            'hora_final' => '11:15',
            'places' => 25,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 8,
            'data' => '2023-04-21',
            'hora_inici' => '10:30',
            'hora_final' => '11:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 8,
            'data' => '2023-04-21',
            'hora_inici' => '10:30',
            'hora_final' => '11:15',
            'places' => 60,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 10,
            'data' => '2023-04-21',
            'hora_inici' => '10:30',
            'hora_final' => '11:15',
            'places' => 15,
            'created_at' => Carbon::now(),
        ));

        // Cambio

        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 2,
            'data' => '2023-04-21',
            'hora_inici' => '11:30',
            'hora_final' => '12:15',
            'places' => 60,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 3,
            'data' => '2023-04-21',
            'hora_inici' => '11:30',
            'hora_final' => '12:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 4,
            'data' => '2023-04-21',
            'hora_inici' => '11:30',
            'hora_final' => '12:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 5,
            'data' => '2023-04-21',
            'hora_inici' => '11:30',
            'hora_final' => '12:15',
            'places' => 20,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 6,
            'data' => '2023-04-21',
            'hora_inici' => '11:30',
            'hora_final' => '12:15',
            'places' => 25,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 7,
            'data' => '2023-04-21',
            'hora_inici' => '11:30',
            'hora_final' => '12:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 9,
            'data' => '2023-04-21',
            'hora_inici' => '11:30',
            'hora_final' => '12:15',
            'places' => 60,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 10,
            'data' => '2023-04-21',
            'hora_inici' => '11:30',
            'hora_final' => '12:15',
            'places' => 15,
            'created_at' => Carbon::now(),
        ));

        // Cambio

        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 2,
            'data' => '2023-04-21',
            'hora_inici' => '12:30',
            'hora_final' => '13:15',
            'places' => 60,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 3,
            'data' => '2023-04-21',
            'hora_inici' => '12:30',
            'hora_final' => '13:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 4,
            'data' => '2023-04-21',
            'hora_inici' => '12:30',
            'hora_final' => '13:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 5,
            'data' => '2023-04-21',
            'hora_inici' => '12:30',
            'hora_final' => '13:15',
            'places' => 20,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 6,
            'data' => '2023-04-21',
            'hora_inici' => '12:30',
            'hora_final' => '13:15',
            'places' => 25,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 8,
            'data' => '2023-04-21',
            'hora_inici' => '12:30',
            'hora_final' => '13:15',
            'places' => 30,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 8,
            'data' => '2023-04-21',
            'hora_inici' => '12:30',
            'hora_final' => '13:15',
            'places' => 60,
            'created_at' => Carbon::now(),
        ));
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 10,
            'data' => '2023-04-21',
            'hora_inici' => '12:30',
            'hora_final' => '13:15',
            'places' => 15,
            'created_at' => Carbon::now(),
        ));

        // Cambio

        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 1,
            'data' => '2023-04-21',
            'hora_inici' => '13:30',
            'hora_final' => '14:00',
            'places' => 400,
            'created_at' => Carbon::now(),
        ));
    }
}
