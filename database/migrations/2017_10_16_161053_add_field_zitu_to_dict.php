<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddFieldZituToDict extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('dicts', function (Blueprint $table) {
            $table->string('zitu', 65)->comment('汉字形象图片')->default('')->after('cate_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('dict', function (Blueprint $table) {
            $table->dropColumn('zitu');
        });
    }
}
