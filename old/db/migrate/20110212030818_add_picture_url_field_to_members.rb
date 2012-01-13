class AddPictureUrlFieldToMembers < ActiveRecord::Migration
  def self.up
    add_column :members, :picture_url, :string
  end
  
  def self.down
    remove_column :members, :picture_url
  end
end