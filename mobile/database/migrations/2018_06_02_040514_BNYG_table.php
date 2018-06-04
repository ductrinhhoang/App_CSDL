<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class BNYGTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('BNYG', function(Blueprint $table) {
			$table->increments('MaSP');
			$table->integer('GiaThanh')->unsigned();
			$table->string('KhuyenMai')->nullable();
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
        Schema::drop('BNYG');
    }
}
