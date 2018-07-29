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

    #Create song for each file
    file_array.each do |filename|
      filename.chomp!(".mp3")

    end
    binding.pry
  end

  def import
    Song.new()
  end
end

MP3Importer.new("./spec/fixtures/mp3s")
