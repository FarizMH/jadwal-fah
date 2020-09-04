<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DosMat extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('Dos_mat', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('Id_Dosen');
            $table->unsignedInteger('Id_Matkul');
            $table->foreign('Id_Dosen')->references('id')->on('Dosen')->onDelete('cascade');
            $table->foreign('Id_Matkul')->references('id')->on('Matkul')->onDelete('cascade');
            $table->integer('semester');
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
        Schema::dropIfExists('Dos_mat');
    }
}
