<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class DosMatSksJurusan extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dos_mat', function (Blueprint $table) {
            $table->integer('SKS');
            $table->unsignedInteger('Jurusan_id');
            $table->foreign('Jurusan_id')->references('id')->on('Jurusan')->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('dos_mat', function (Blueprint $table) {
            //
        });
    }
}
