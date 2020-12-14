require 'pry'

class Artist
    attr_accessor :name, :song
    
    @@all = [ ]
    def initialize(name)
        @name = name
        @@all << self
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        new_song = Song.new(name)
        new_song.artist = self
    end

    def songs
        Song.all.select {|song| song.artist == self} 
    end

    def self.song_count
        Song.all.size
    end
end

#drake = Artist.new("Drake")
#binding.pry