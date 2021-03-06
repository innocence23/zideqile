<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateBushousTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('bushous', function (Blueprint $table) {
            $table->increments('id');
            $table->tinyInteger('bihua')->unsigned()->default(0)->comment('笔画');
            $table->string('name', 5)->unique();
            $table->string('desc', 60)->default('');
            $table->integer('created_by')->unsigned();
            $table->integer('updated_by')->unsigned();
            $table->tinyInteger('status')->default(1);
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
        Schema::dropIfExists('bushous');
    }
}
