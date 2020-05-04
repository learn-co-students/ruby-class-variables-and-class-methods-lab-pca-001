class Song
    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists.push(artist) #if ! @@artists.include?(artist)
        @@genres.push(genre) #if ! @@genres.include?(genre)
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
    def self.genre_count
        hash = {}
        @@genres.each{ |a| hash.key?(a) ? hash[a] += 1 : hash[a] = 1 }
        hash
    end
    def self.artist_count
        hash = {}
        @@artists.each{ |a| hash.key?(a) ? hash[a] += 1 : hash[a] = 1 }
        hash
    end
end