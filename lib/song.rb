class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        self.name = name
        self.artist = artist
        self.genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each{|genre|
            if genre_count[genre]
                genre_count[genre] += 1
            else
                genre_count[genre] = 1
            end
        }
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each{|artist|
            if artist_count[artist]
                artist_count[artist] += 1
            else
                artist_count[artist] = 1
            end
        }
        artist_count
    end
end

rock = Song.new("a","a","Rock")
rock2 = Song.new("a","a","Rock")
rap = Song.new("b","b","Rap")
heavy_metal = Song.new("c","c","Heavy Metal")
metal = Song.new("D","D","Heavy Metal")
metal2 = Song.new("D","D","Heavy Metal")

p Song.genre_count

