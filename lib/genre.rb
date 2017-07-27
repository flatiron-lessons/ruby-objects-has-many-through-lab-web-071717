require 'pry'

class Genre

	attr_accessor :name, :songs

	def initialize(name)
		@name = name
		@songs = []
	end

	def artists
		self.songs.map do |song|
			song.artist
		end.uniq
	end

	def add_song(song) # this method is called upon initialization of Song (which is called from artist)
		self.songs << song # this pushes the song arg into our Genre.songs array.
	end
end