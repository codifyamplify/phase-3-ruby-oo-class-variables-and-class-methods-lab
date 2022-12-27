class Song
    # macros for setters and getters
    attr_accessor :name, :artist, :genre
    # class variables
    @@count = 0
    @@genres = []
    # create an @@artists variable of an empty array to keep track of all artists
    @@artists = []
    # attr_accessor :name
    # attr_accessor :artist
    # attr_accessor :genre
    # initializatios for attributes that must be present on object creation
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        # on object creation, increment @@count by one
        @@count += 1
        # write a class method genres that will return an array of all genres created on objects so far
        # CORRECTIONS: the genre shovel into @@genre should happen on object creation, so it should happen in initializations
        @@genres << genre
        # write an @@artists initialization to shovel in artist to @@artists array on creation
        @@artists << artist
    end
    # write a class method that returns the current @@count
    def self.count
        @@count
    end
    # write shovel genres method to go along with initialization, but control for duplicates with .uniq
    def self.genres
            @@genres.uniq
    end
    # write an .artists method that returns an array of all artists on created objects
    def self.artists
            @@artists.uniq
    end
    # write a .genre_count method that returns a hash, where the keys are the genres and the values are the count
    # .tally can be called on an array and outputs a hash where the array elements are turned into the keys of the hash, and the array values are tallied up and turned into the values of the hash
    def self.genre_count
        genre_count = {}
        @@genres.tally
    end
    # write a artist_count method that returns a hash like genre_count, but with artists' song tallies
    def self.artist_count
        artist_count = {}
        @@artists.tally
    end
end

