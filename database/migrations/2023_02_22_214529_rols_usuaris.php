<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class RolsUsuaris extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rols_usuaris', function (Blueprint $table) {
            $table->increments('id')->unsigned();
            $table->integer('id_usuari')->unsigned();
            $table->integer('id_rol')->unsigned();
            $table->softDeletes();
            $table->timestamps();

            // Relationships
            $table->foreign('id_usuari')->references('id')->on('users');
            $table->foreign('id_rol')->references('id')->on('rols');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('rols_usuaris');
    }
}
