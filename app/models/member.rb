class Member < ActiveRecord::Base
  validates :name, :presence => true
  validates :graduating_year, :presence => true
end