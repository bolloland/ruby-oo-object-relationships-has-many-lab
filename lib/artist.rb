require 'pry'
class Artist
    attr_accessor :name, :song
    
    def initialize(name) #create Artist.new with a name
        @name = name
        # @songs = [] #create array of songs
    end
    
    def songs
        Song.all.select {|song| song.artist == self}
    end
        
    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
    end
#binding.pry
    def self.song_count
        Song.all.count
    end
    
end
# def add_song(song) #add new songs by the name of song
#     @songs << song #new song dumped into array
#     # song.artist = self  #attaches artist to new song
# end

# def add_song(song)
#     song.artist = self
#   end
