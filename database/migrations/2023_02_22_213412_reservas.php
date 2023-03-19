<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Reservas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('reservas', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('id_activitat_fira')->unsigned();
            $table->integer('id_usuari')->unsigned();
            $table->integer('presentat')->nullable();
            $table->integer('valoracio')->nullable();
            $table->string('comentari')->nullable();
            $table->softDeletes();
            $table->timestamps();

            // Relationships
            $table->foreign('id_activitat_fira')->references('id')->on('activitats_firas');
            $table->foreign('id_usuari')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('reservas');
    }
}
