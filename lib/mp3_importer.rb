require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    self.path = filepath
    self.files
  end

  def files
    #Change directory to the filepath provided on initialization
    Dir.chdir(self.path)

    #Grab all files in the directory that are mp3 format
    file_array = Dir.glob("*.mp3")

    #For each file
    file_array.each do |filename|
      #Chop .mp3 of the name
      filename.chomp!(".mp3")

      #Split filename (string) into array
      song_details = filename.split(" - ")

    end
    binding.pry
  end

  def import
    Song.new()
  end
end

MP3Importer.new("./spec/fixtures/mp3s")
