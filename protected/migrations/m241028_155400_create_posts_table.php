<?php

class m241028_155400_create_posts_table extends CDbMigration
{
	public function up(): void
	{
		$this->createTable('tbl_post', array(
			'id' => 'pk', 
            'title' => 'string NOT NULL',
            'content' => 'text NOT NULL',
            'author_id' => 'integer NOT NULL',
            'created_at' => 'timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP',
            'updated_at' => 'timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP',
            'FOREIGN KEY (author_id) REFERENCES tbl_user(id) ON DELETE CASCADE', 
		));
	}

	public function down(): void
	{
		$this->dropTable('tbl_post');
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
