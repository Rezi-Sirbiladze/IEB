<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Firas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('firas', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('id_institut')->unsigned();
            $table->string('nom');
            $table->date('data');
            $table->time('hora_inici');
            $table->time('hora_final');
            $table->text('descripcio');
            $table->softDeletes();
            $table->timestamps();

            // Relationships
            $table->foreign('id_institut')->references('id')->on('instituts');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('firas');
    }
}
