<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class ProductTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product', function (Blueprint $table) {
            $table->increments('maSP');
            $table->string('tenSP', 30);
            $table->string('hangSX', 30);
			$table->string('khuyenMai')->nullable();
            $table->integer('giaTien')->unsigned();
            $table->integer('giaCu')->nullable();
            $table->string('kichThuoc');
            $table->string('phanGiai');
            $table->string('heDieuHanh');
            $table->string('CPU');
            $table->string('RAM');
            $table->string('mayAnhChinh');
            $table->string('boNhoTrong');
            $table->string('dungLuongPin');
            $table->string('link');
			$table->timestamps();
			$table->rememberToken();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('product');
    }
}
