class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.artists
    @@artists.uniq!
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre] #if the genre is already in the hash
        genre_count[genre] += 1 #if the genre has already been recorded then dont create a new genre add 1 to the previously added genre_count
      else #if it is a new genre then create a new genre count? (confused here)
        genre_count[genre] = 1
      end
    end
    genre_count #why is the class method being called in our code?
  end

def self.artist_count
    artist_count = {}
     @@artists.each do |artist|
        if artist_count[artist]
          artist_count[artist] =+ 1 
        else 
          artist_count[artist] = 1 
        end
      end
      artist_count
    end
end