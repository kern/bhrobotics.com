class AddMentorFieldToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :mentor, :boolean, :default => false
  end
  
  def self.down
    remove_column :members, :mentor
  end
end