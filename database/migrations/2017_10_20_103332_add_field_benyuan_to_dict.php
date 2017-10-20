<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldBenyuanToDict extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dicts', function (Blueprint $table) {
            $table->string('benyuan', 255)->comment('汉字造字本源')->default('')->after('shuowen');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('dicts', function (Blueprint $table) {
            $table->dropColumn('benyuan');
        });
    }
}
