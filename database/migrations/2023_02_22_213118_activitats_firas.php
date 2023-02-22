<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ActivitatsFiras extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activitats_firas', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('id_fira')->unsigned();
            $table->integer('id_activitat')->unsigned();
            $table->softDeletes();
            $table->timestamps();


            // Relationships
            $table->foreign('id_fira')->references('id')->on('firas');
            $table->foreign('id_activitat')->references('id')->on('activitats');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('activitats_firas');
    }
}
