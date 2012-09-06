class MediaController < ApplicationController
  def photos
    require 'net/http'
    require 'rexml/document'
    picasa_url = "http://picasaweb.google.com/data/feed/api/user/113247014624505710959"
    picasa_xml = Net::HTTP.get_response(URI.parse(picasa_url))
    xmol = File.new(picasa_xml.body)
    doc = REXML::Document.new(xmol)
    @picasa_doc = doc
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
  end
end
