class Song 
  attr_accessor :name :artist :genre 
  @@count = 0 
  
  def initialize.count
    self.count += 1 
  end
  
  def count 
    @@count
  end
  
  def self.genres 
    @@genres.uniq 
  end
  
  def self.genres_count
    genres_count = {}
    @@genres_count.each do |genre|
      if genre
    

    