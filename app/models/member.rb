class Member < ActiveRecord::Base
  validates_presence_of :name
  validates_inclusion_of :category, :in => %w{student mentor alumni}
end
