require 'pry'
class Artist
    attr_accessor :name, :song #Artist has names and songs
    
    def initialize(name) #create Artist.new with a name
        @name = name
        # @songs = [] #create array of songs
    end
    
    def songs #will sift through and select all songs that have that artist attached to the Song
        Song.all.select {|song| song.artist == self}
    end
        
    def add_song(song) #adds song, attaches artist name to it
        song.artist = self ##BUT add_song_by_name puts it into database (?right?)
    end

    def add_song_by_name(name)
        song = Song.new(name) #like above, put creates new song from Song class..
        song.artist = self #..which automatically saves it in @@all
    end
#binding.pry
    def self.song_count
        Song.all.count #counts everything in Song.all (@@all in Song class)
    end
    
end
# def add_song(song) #add new songs by the name of song
#     @songs << song #new song dumped into array
#     # song.artist = self  #attaches artist to new song
# end

# def add_song(song)
#     song.artist = self
#   end
