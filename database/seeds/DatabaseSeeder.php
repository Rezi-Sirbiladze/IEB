<?php

use App\Models\Activitat;
use App\Models\Activitat_fira;
use App\Models\Institut;
use App\Models\Fira;
use App\Models\Rol;
use App\User;
use Illuminate\Database\Seeder;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;

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

        Rol::insert(array('nom' => 'admin', 'descripcio' => 'admin', 'created_at' => Carbon::now()));

        $admin = User::create(array('name' => 'Admin', 'email' => 'admin@admin.net', 'password' => Hash::make('admin@admin'), 'created_at' => Carbon::now(),));
        $adminRol = Rol::where('id', 1)->first();
        $admin->rol()->attach($adminRol);

        Activitat::insert(array('nom' => 'ACTIVITAT CONJUNTA', 'descripcio' => "Activitat sorpresa! Prepara't per a passar l'última estona amb tots els teus companys i companyes i tots els nostres tècnics junts en un espai on no existeix la vergonya! Aquestes preparat i preparada?", 'imatge' => 'Design - Option C.png', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'FAMA', 'descripcio' => "Classe pre coreografiada de condicionament físic, inspirada en la cultura llatina amb sons també internacionals. La fórmula barreja el ball amb exercicis de tonificació per a totes les persones sense importar la seva edat, el seu estat físic, el seu entorn, ja que no requereix un nivell ni d'una experiència prèvia.", 'imatge' => 'foto 1.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'WOD', 'descripcio' => "Propi de la disciplina del CrossFit. Les seves sigles signifiquen \"Work Of the Day\", que significa la rutina i els exercicis que s'han de realitzar aquell dia en concret. Aquesta rutina està composta d'exercicis físics que combinen la força, gimnàstica i resistència.", 'imatge' => 'foto 2.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'BOXA', 'descripcio' => "Vols descobrir les bases de la boxa? Apunta't a la nostra classe i coneixeràs els cops més bàsics i més utilitzats de la boxa, així com practicaràs les combinacions més eficients. T'assegurem diversió mentres guanyes confiança i aprens a defensar-te davant d'un atac.", 'imatge' => 'foto 3.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'CORE Y TRX', 'descripcio' => "Treball intens d'abdominals amb diferents tipus de planxes i crunches abdominals, combinat amb un treball funcional mitjançant exercicis on usarem el nostre propi pes corporal en suspensió (TRX).", 'imatge' => 'foto 4.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'OPOSICIONS', 'descripcio' => "Consisteix en conèixer les proves de les oposicions de les forces de seguretat de l'estat, per a posar-te a prova i veure a quin nivell et trobes. T'animes?", 'imatge' => 'foto 5.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'POSTURAL', 'descripcio' => "Activitat on el cos i ments treballen de forma integral per a la millora la condició física, el control postural, la flexibilitat i la respiració. La combinació d'exercicis d'estiraments i tonificació de les diferents cadenes musculars seran bàsics per garantir la correcta estabilització de la columna. Integrar la relaxació com a part del nostre concepte de salut i entrenament és un dels pilars del Control Postural.", 'imatge' => 'foto 6.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'TWERK', 'descripcio' => "Classe de ball coreografica de 45 minuts on se’t presentaràn els passos més bàsics del Twerk, estil de ball centrat en moviments pelvics. Per a venir i passar-t’ho bé necessitaràs: treure’t la vergonya de sobre, ment oberta i la roba (pantalons) que et permeti moure’t amb llibertat i amb quina et sentis comode (des de la més llarga fins la més curta)", 'imatge' => 'foto 10.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'BY COMBAT', 'descripcio' => "El que es busca aquest taller és mostrar aquesta innovadora modalitat on un treball aeròbic d'alta intensitat es combina amb els gestos tècnics de diferents arts marcials com el Taekwondo, Boxa, karate , Muay Thai,... En format coreografiat per incloure el ritme i la coordinació, i utilitzant cops de puny, puntades, guàrdies,...", 'imatge' => 'foto 7.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'NUTRICIÓ REPTES', 'descripcio' => "T'has plantejat mai quin tipus d'alimentació porten els esportistes? Sabries dir quines adaptacions alimentàries ha de tenir un esportista de resistència? I de força-potència?
        Vine a fer un taller amb l'alumnat de dietètica de l'IAB per aprendre consells nutricionals bàsics I característics per a diferents tipus d'esportistes", 'imatge' => 'foto 8.jpg', 'created_at' => Carbon::now(),));
        Activitat::insert(array('nom' => 'A CUINAR!', 'descripcio' => "Si vols aprendre a fer un menú senzill, ràpid, energetic i saludable, que et serveixi per abans d'anar a fet el teu entrenament, o per després, passa't a fer un taller de cuina amb l'alumnat de dietètica de l'IAB. I al final del taller, a fer el tastet... segur que  t'agradarà.
        ", 'imatge' => 'foto 9.jpg', 'created_at' => Carbon::now(),));

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
            'descripcio' => "La FIRA és un esdeveniment organitzat per l'alumnat de 2n del Cicle Superior de Condicionament Físic de l'Institut de l'Esport de Barcelona amb la intenció de promoure la pràctica d'exercici físic en població jove, donar a conèixer el nostre Institut així com fomentar els valors solidaris amb una especial col·laboració amb Tienda Solidaria Piel de Mariposa.
            Gaudirem d'un matí amb diverses activitats i tallers dirigits pels mateixos alumnes.
            Fem esport solidari!",
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
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 11,
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
            'id_activitat' => 9,
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
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 11,
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
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 11,
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
            'id_activitat' => 9,
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
        Activitat_fira::insert(array(
            'id_fira' => 1,
            'id_activitat' => 11,
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
