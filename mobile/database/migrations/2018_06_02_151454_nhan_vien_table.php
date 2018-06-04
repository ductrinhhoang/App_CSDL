<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class NhanVienTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nhanvien', function (Blueprint $table) {
            $table->increments('maNV');
            $table->string('CMND', 30);
            $table->string('hoTen', 30);
            $table->string('gioiTinh', 10);
			$table->string('ngaySinh')->nullable();
            $table->string('diaChi')->nullable();
            $table->integer('luong');
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
        Schema::drop('users');
    }
}
