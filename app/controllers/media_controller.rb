class MediaController < ApplicationController
# =begin
 #def photos
  #  require 'net/http'
   # require 'rexml/document'
    #picasa_url = "http://picasaweb.google.com/data/feed/api/user/113247014624505710959"
    #picasa_xml = Net::HTTP.get_response(URI.parse(picasa_url))
    #xmol = File.new(picasa_xml.body)
    #doc = REXML::Document.new(xmol)
    #@picasa_doc = doc
    #doc.elements.each("gphoto:id/gphoto:name") { |element| puts element }


    #@picasa_albums = []
    #for album in picasa_doc.elements.to_a
    #	@picasa_albums << post.elements['gphoto'].text
    #end

   # url = URI.parse('http://picasaweb.google.com/data/feed/api/user/113247014624505710959')
   # req = Net::HTTP::Get.new(url.path)
   # res = Net::HTTP.start(url.host, url.port) {|http|
   #   http.request(req)
   # }
   # @albums = res.body
 # end
  
#  def photos
    #require 'nokogiri'
    #require 'open-uri'  
    #require 'rubygems'
   # content = File.read('input.xml')
  #  doc = Nokogiri::XML(content) {|config| 
           #   config.options = Nokogiri::XML::ParseOptions::STRICT
          #}
          
    #hashes = doc.xpath('//xmlns:entry').map do |entry|
      #{
        #:id => entry.xpath('gphoto:id').inner_text,
       # :thumb => entry.parent.xpath('gphoto:thumbnail').inner_text,
      #  :name => entry.xpath('gphoto:name').inner_text,
     #   :count => entry.xpath('gphoto:numphotos').inner_text
    #  }
   # end
    #
  #  puts hashes.inspect
    
 # end
  
  def photos
    require 'nokogiri'
    require 'open-uri'
    doc = Nokogiri::HTML(open('http://picasaweb.google.com/data/feed/api/user/113247014624505710959'))
    @picasa_doc = doc
  end
end
