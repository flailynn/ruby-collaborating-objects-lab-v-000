class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    #Chop .mp3 of the name
    filename.chomp!(".mp3")

    #Split filename (string) into array
    song_details = filename.split(" - ")

    artist_name = song_details[0]
    song_name = song_details[0]
    song_genre

    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.artist.add_song(song)


  end
end
