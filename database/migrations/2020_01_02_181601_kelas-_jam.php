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
            $table->integer('Id_Kelas');
            $table->integer('Id_Jadwal');
            $table->integer('id_dos_mat')->nullable();
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
