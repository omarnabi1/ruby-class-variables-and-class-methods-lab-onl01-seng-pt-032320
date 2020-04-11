class Song 
  attr_accessor :name :artist :genre 
  @@count = 0
  @@genre = [ ]
  @@artists = [ ]
  
  def initialize (song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1 
    @@genres << genre
    @@artist << artist 
  end
  
  def self.count
    @@count 
  end
  
  def self.genres
    @@genres.uniq 
  end
  
  def self.artist
    @@artist.uniq 
  end
  
  def. self.genre_count
  genre = { }
  @@genres.each do |genre|
    if genre_count [genre]