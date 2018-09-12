class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = ""
  @@genres = ""

  
  GENRES = []
  ARTISTS = []
  GENRE_COUNT = []
  ARTIST_COUNT = []

  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    ARTISTS << @artist
    GENRES << @genre
  end
  
  def self.count
    @@count
  end 
  
  
  def self.genres
    @@genres = GENRES
    GENRES
  end 
  
  def self.artists
    @@artists = ARTISTS
    ARTISTS
  end
      
  def self.genre_count
    GENRES.each do |variable|
      GENRE_COUNT[variable] += 1 
    end
  end 
  
  def self.artist_count
    ARTISTS.each do |variable|
      ARTIST_COUNT[variable] += 1 
    end
  end 
  
  
  
  
end 