class Song
 
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre 
    end
   def self.count
    @@count
   end
   def self.artists
    @@artists.uniq
   end
   def self.genres
    @@genres.uniq
   end
   def self.genre_count
    count = 0
    genre_count ={}
    @@genres.each do |genre|
        genre_count[genre] = @@genres.count {|num| num ==genre}
	
		 end
	genre_count

   end

def self.artist_count
    count = 0
    artist_count = {}
    @@artists.each do |artist|
        artist_count[artist] = @@artists.count {|num| num ==artist}
    end
    artist_count
end
end
