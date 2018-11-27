class Song 
  @@count = 0
  @@all = []
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre 

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
    @@genres << genre 
    @@artists << artist 
    
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.artists
    @@artists.uniq
  end 
  
  
end 
    
    