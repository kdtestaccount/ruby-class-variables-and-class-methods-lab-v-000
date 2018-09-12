class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []

  
  GENRES = []
  ARTISTS = []
  MASTER_GENRES = []
  MASTER_ARTISTS = []
  GENRE_COUNT = {}
  ARTIST_COUNT = {}

  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    if @artist != nil
      MASTER_ARTISTS << @artist
    end
    if @genres != nil
    MASTER_GENRES << @genres
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
    MASTER_GENRES.each do |variable|
      genre_count_int = MASTER_GENRES.count(variable)
      puts "GENRES ARRAY: #{GENRES}"
      puts "MASTER_GENRES ARRAY: #{MASTER_GENRES}"

      GENRE_COUNT.store(variable, genre_count_int)
    end
    GENRE_COUNT
  end 
  
  def self.artist_count
     MASTER_ARTISTS.each do |variable|
      key_string = MASTER_ARTISTS.count(variable)
      ARTIST_COUNT.store(variable, key_string)
    end
    ARTIST_COUNT
  end 
  
  
  
  
end 