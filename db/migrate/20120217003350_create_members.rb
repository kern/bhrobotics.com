class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.text :biography
      t.string :college
      t.integer :graduation_year
      t.string :position
      t.string :subteam
      t.string :company
      t.string :category
      t.string :picture

      t.timestamps
    end
  end
end
