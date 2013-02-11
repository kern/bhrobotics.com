class Member < ActiveRecord::Base
  #validates_presence_of 
#  attr_accessible :name
  attr_accessible :name, :biography, :college, :graduation_year, :position, :subteam, :company, :category, :picture
  #attr_protected
  #attr_accessible :graduation_year
  #validates_inclusion_of :category, :in => %w{student mentor alumni}
end

# <% require 'net/http' %>
# <% Net::HTTP.get(URI.parse('https://picasaweb.google.com/data/feed/api/user/113247014624505710959')) %>
