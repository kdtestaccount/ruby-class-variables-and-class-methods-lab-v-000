class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  @@genre_count = []
  @@artist_count = []

  
  def initialize(name, artist, genre)
    @name = name
    @@count += 1
    @artist = artist
    @genre = genre
    ARTISTS << artist
    GENRES << genre
  end
  
  def self.count
    @@count
  end 
  
  def self.genres
    @@genres
  end 
  
  def self.artists
    @@artists
  end
      
  def self.genre_count
    @@genres.each do |variable|
      @@genre_count[variable] += 1 
    end
  end 
  
  def self.artist_count
    @@artists.each do |variable|
      @@artist_count[variable] += 1 
    end
  end 
  
  
  
  
end 