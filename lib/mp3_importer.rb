require "pry"
class MP3Importer 
  
  @@all = []
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
    @@all << self
  end
  
  def files 
    directory = Dir[@path += '/**/*.mp3'].sort
    parsed_files = directory.collect do |file|
      file.match(/[A-Z].+\.mp3/).to_s
    end
  end
  
#   ["Action Bronson - Larry Csonka - indie.mp3",
# "Thundercat - For Love I Come - dance.mp3",
# "Real Estate - It's Real - hip-hop.mp3",
# "Real Estate - Green Aisles - country.mp3"]
  
end