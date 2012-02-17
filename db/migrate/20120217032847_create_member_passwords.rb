class CreateMemberPasswords < ActiveRecord::Migration
  def change
    create_table :member_passwords do |t|
      t.string :password
      t.timestamps
    end
  end
end
