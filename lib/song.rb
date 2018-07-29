class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end

  def self.new_by_filename(filename)
    song = Song.new(filename)

    #For each file
    file_array.each do |filename|
      #Chop .mp3 of the name
      filename.chomp!(".mp3")

      #Split filename (string) into array
      song_details = filename.split(" - ")
    end

  end
end
