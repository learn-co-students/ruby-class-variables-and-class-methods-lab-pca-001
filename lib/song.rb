class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @@artists << artist #unless @@artists.include? artist

    @genre = genre
    @@genres << genre #unless @@genres.include? genre

    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    @@artists.each_with_object({}) do|artist, result|
      result[artist] ? result[artist] += 1 : result[artist] = 1 
    end
  end

  def self.genre_count
    @@genres.each_with_object({}) do|genre, result|
      result[genre] ? result[genre] += 1 : result[genre] = 1 
    end
  end
end
