require "pry"

class Song 
  
  @@all = []
  
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def artist=(artist)
    @artist = artist
    artist.songs << self
  end
  
  def self.all 
    @@all 
  end
  
  def self.new_by_filename(file_name)
    new_song = file_name.split(' - ')[1]
    self.new(new_song).artist = self
  end

end









