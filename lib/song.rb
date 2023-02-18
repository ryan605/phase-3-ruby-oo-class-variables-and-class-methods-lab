class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = ["Jay-Z", "Brittany Spears"]
    @@genres = []
    @@artists = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.artists
        result = @@artists
        @@artists = result.uniq
    end

    def self.genres
        song_genre = @@genres
        @@genres = song_genre.uniq
    end

    def self.genre_count
        return @@genres.tally
    end

    def self.artist_count
        return @@artists.tally
    end

end