require 'pry'

class Artist 
  
  @@all = []
  
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def songs
    @songs
  end
  
  def add_song(song) 
    songs << song
  end
  
  def self.find_or_create_by_name(artist_instance)
    self.all.find{|artist| artist.name == artist_instance} || self.new(artist_instance)
  end
  
  def print_songs 
    songs.each{|song| puts song.name}
  end
  
end





