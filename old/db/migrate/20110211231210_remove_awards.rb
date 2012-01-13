class RemoveAwards < ActiveRecord::Migration
  def self.up
    drop_table :awards
  end
  
  def self.down
    throw ActiveRecord::IrreversibleMigration
  end
end