class Song
    attr_accessor :name, :artist

    @@all = [] #all of the songs by everyone

    def initialize(name)
        @name = name
        @artist = artist
        save #puts song in @@all
    end

    def save  #method for putting song in @@all
        @@all << self
    end

    def self.all #Song.all
        @@all
    end

    def artist_name
        self.artist.name if artist#the Song has an Artist has a name
    end
end