<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class Surattugas extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('surattugas', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nomersrt');
            $table->string('bulan');
            $table->string('tahun');
            $table->string('tahunakademik');
            $table->string('tanggalrapat');
            $table->string('waktukuliah');
            $table->string('tanggalsurat');
            //

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
                Schema::dropIfExists('surattugas');

    }
}
