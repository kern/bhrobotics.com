class AddCollegeFieldToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :college, :string
  end
  
  def self.down
    remove_column :members, :college
  end
end