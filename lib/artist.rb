class Artist

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
        Song.all.select {|songs| songs.artist == self}
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        Song.all.select {|genres|
            genres.artist == self}.map {|instances| instances.genre}
    end
end
