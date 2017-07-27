require 'pry'

class Artist

	attr_accessor :name, :songs

	def initialize(name)
		@name = name
		@songs = []
	end

	def add_song(song)
		self.songs << song # add song to artist.songs
		song.artist = self # assign artist to song
	end

	def genres
		# iterates over array of songs to get each genre
		self.songs.map do |song|	
			song.genre 
		end.uniq # returns an array of unique artists

	end

end