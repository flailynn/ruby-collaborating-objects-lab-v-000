require 'pry'

class MP3Importer
  attr_accessor :path
  attr_writer :filenames

  def initialize(filepath)
    self.path = filepath
    #self. self.files
  end

  def files
    #Change directory to the filepath provided on initialization
    Dir.chdir(self.path)

    #Grab all files in the directory that are mp3 format
    self.filenames = Dir.glob("*.mp3")
  end

  def import
    #Song.new()
  end
end

# MP3Importer.new("./spec/fixtures/mp3s")
