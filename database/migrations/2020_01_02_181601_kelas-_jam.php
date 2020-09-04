<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class KelasJam extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kelas_Jam', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('Id_Kelas');
            $table->unsignedInteger('Id_Jadwal');
            $table->unsignedInteger('id_dos_mat')->nullable();
            $table->foreign('Id_Kelas')->references('id')->on('Kelas')->onDelete('cascade');
            $table->foreign('Id_Jadwal')->references('id')->on('Jam')->onDelete('cascade');
            $table->foreign('id_dos_mat')->references('id')->on('Dos_mat')->onDelete('cascade');
            $table->string('Hari');

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('kelas_Jam');
    }
}
