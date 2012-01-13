class RenameGraduationYearToYear < ActiveRecord::Migration
  def self.up
    rename_column :members, :graduating_year, :year
  end
  
  def self.down
    rename_column :members, :year, :graduating_year
  end
end