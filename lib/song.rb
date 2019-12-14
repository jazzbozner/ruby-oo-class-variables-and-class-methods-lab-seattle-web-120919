require 'pry'
class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []
    
    def initialize(name, artist, genre)
        @name = name
        @@count += 1
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
    end
    
    def self.count
        @@count
    end

    def self.artists
        #return [] of artist's existing songs (uniq artists)
        @@artists.uniq
        # binding.pry
    end

    def self.genres
        #returns [] of all genres with no dups (.uniq)
        @@genres.uniq
    end
    # binding.pry
    def self.genre_count
        genre_hash = Hash.new(0)
        @@genres.each { |element| genre_hash[element] += 1 } 
        genre_hash.each { |k, v| }
    end
        
    def self.artist_count
        binding.pry
        artist_hash = Hash.new(0)
        @@artists.each { |element| artist_hash[element] += 1}
        artist_hash.each {|k, v|}
    end

    
end