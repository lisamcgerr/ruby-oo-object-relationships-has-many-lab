require 'pry'
class Song
    attr_reader :title, :name, :artist

    @@all = [ ]
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def name
        @title
    end

    def artist_name
        if self.artist
            self.artist.name
        else self.artist.name = nil
            nil
        end
    end
end