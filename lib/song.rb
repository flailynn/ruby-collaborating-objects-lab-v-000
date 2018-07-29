class Song

  attr_accessor :name, :artist



  def self.new_by_filename(filename)
    song = Song.new()
    song.name = filename
  end
end
