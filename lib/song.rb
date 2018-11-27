class Song 
  @@count = 0
  @@all = []
  
  attr_accessor :name, :artist, :genre 

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self
  end 
  
  def self.count
    @@count
  end 
  
  def self.genres 
    @@all.collect do |song|
      song.genre 
    end.uniq 
  end 
end 
    
    