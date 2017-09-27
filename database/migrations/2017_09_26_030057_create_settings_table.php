<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSettingsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('settings', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name')->comment('网站名称');
            $table->string('logo')->comment('网站logo');
            $table->string('bgimage')->comment('网站头部背景图');
            $table->integer('qq');
            $table->string('email');
            $table->string('weixin')->default('');;
            $table->string('weibo')->default('');;
            $table->string('google')->default('');
            $table->string('facebook')->default('');
            $table->string('twitter')->default('');
            $table->string('fax')->comment('传真')->default('');
            $table->string('contact')->comment('网站联系人');
            $table->string('position')->comment('网站位置详细地址');
            $table->string('position_x')->comment('网站位置X坐标');
            $table->string('position_y')->comment('网站位置Y坐标');
            $table->integer('bstable_line_count')->comment('bootstrap 显示行数');
            $table->string('desc')->comment('网站描述');
            $table->string('copyright');
            $table->string('info')->default('')->comment('其他补充信息');
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
        Schema::dropIfExists('settings');
    }
}
