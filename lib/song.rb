require "pry"

class Song 
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    array = []
    @@artists.each { |a| array << a unless array.include?(a) }
    array
  end

  def self.genres
    array = []
    @@genres.each { |g| array << g unless array.include?(g) }
    array
  end
  binding.pry
  def self.genre_count
    hash = {}
    @@genres.each { |g| hash.include?(g) ? hash[g] += 1 : hash[g] = 1 }
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each { |a| hash.include?(a) ? hash[a] += 1 : hash[a] = 1 }
    hash
  end
end
