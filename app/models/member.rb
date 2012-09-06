class Member < ActiveRecord::Base
  validates_presence_of :name
  validates_inclusion_of :category, :in => %w{student mentor alumni}
end

# <% require 'net/http' %>
# <% Net::HTTP.get(URI.parse('https://picasaweb.google.com/data/feed/api/user/113247014624505710959')) %>