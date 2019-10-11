require "pry"
class MP3Importer 
  
  @@all = []
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @@all << self
  end
  
  def files 
    Dir.entries(@path).select{|entry| entry.include?('mp3')}
  end
  
  def import 
    files.each{|file_name| Song.new_by_filename(file_name)}
  end
  
#   ["Action Bronson - Larry Csonka - indie.mp3",
# "Thundercat - For Love I Come - dance.mp3",
# "Real Estate - It's Real - hip-hop.mp3",
# "Real Estate - Green Aisles - country.mp3"]
  
end