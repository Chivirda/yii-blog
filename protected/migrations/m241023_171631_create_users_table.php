<?php

class m241023_171631_create_users_table extends CDbMigration
{
	public function up(): void
	{
		$this->createTable('tbl_user', array(
			'id' => 'pk',
			'username' => 'string NOT NULL',
			'email' => 'string NOT NULL UNIQUE',
			'password' => 'string NOT NULL',
			'created_at' => 'timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP',
            'updated_at' => 'timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP',
		));
	}

	public function down(): void
	{
		$this->dropTable('tbl_user');
	}

	/*
	// Use safeUp/safeDown to do migration with transaction
	public function safeUp()
	{
	}

	public function safeDown()
	{
	}
	*/
}
