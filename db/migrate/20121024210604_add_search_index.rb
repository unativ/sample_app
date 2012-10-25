class AddSearchIndex < ActiveRecord::Migration
  def self.up
    execute 'ALTER TABLE microposts ENGINE = MyISAM'
    execute 'CREATE FULLTEXT INDEX fulltext_posts ON microposts (content)'
  end

  def self.down
    execute 'ALTER TABLE microposts ENGINE = InnoDB'
    execute 'DROP INDEX fulltext_posts ON microposts'
  end
end
