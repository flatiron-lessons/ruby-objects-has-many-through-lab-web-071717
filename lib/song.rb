class Song

	attr_accessor :artist, :name, :genre

	def initialize(name, genre)
		@name = name
		@genre = genre # we create a genre attribute for Song on initialization
		genre.add_song(self) # this adds self (the instance of Song we are creating) to genre.songs = []
	end

end