class Genre

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end


    def self.all
        @@all
    end

    def songs
        Song.all.select {|songs| songs.genre == self}
    end

    def artists
        Song.all.select {|songs|
        songs.genre == self}.map {|instances| instances.artist}
    end

end
