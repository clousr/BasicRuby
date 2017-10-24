#class that stores array of songs
class Album
  include Enumerable
  #array of object of songs
  attr_reader :songs

  def initialize
    @songs = []
  end

  def add_song(song)
    songs << song
  end
  def each
    songs.each do |song|
      yield song
    end
  end
end

thriller = Album.new
thriller.add_song("thriller")
thriller.add_song("billie jean")

puts thriller.songs
#open rdoc in terminal
