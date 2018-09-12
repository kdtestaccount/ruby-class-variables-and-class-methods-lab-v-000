class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []

  
  GENRES = []
  ARTISTS = []
  GENRE_COUNT = {}
  ARTIST_COUNT = {}

  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    if !ARTISTS.include?(@artist)
      ARTISTS << @artist
    end
    if !GENRES.include?(@genre)
      GENRES << @genre
    end
  end
  
  def self.count
    @@count
  end 
  
  
  def self.genres
    GENRES
  end 
  
  def self.artists
    ARTISTS
  end
  
   
  def self.genre_count
    GENRES.each do |variable|
      key_string = GENRES.count(variable)
      GENRE_COUNT.store(:variable, key_string)
    end
    GENRE_COUNT
  end 
  
  def self.artist_count
    ARTISTS.each do |variable|
      ARTIST_COUNT[:variable] = +1 
    end
  end 
  
  
  
  
end 