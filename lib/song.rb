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
    song = file_name.split(' - ')[1]
    songs = self.new(song)
    songs.artist_name = artist
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

end









