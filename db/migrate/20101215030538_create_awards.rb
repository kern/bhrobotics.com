class CreateAwards < ActiveRecord::Migration
  def self.up
    create_table :awards do |t|
      t.string :name
      t.integer :year
      t.string :regional
      t.string :description
      
      t.timestamps
    end
  end
  
  def self.down
    drop_table :awards
  end
end