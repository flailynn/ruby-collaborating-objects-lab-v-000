require 'pry'

class MP3Importer
  attr_accessor :path
  attr_writer :files

  def initialize(filepath)
    self.path = filepath
  end

  def files
    #Change directory to the filepath provided on initialization
    Dir.chdir(self.path) do
      #Grab all files in the directory that are mp3 format
      self.files = Dir.glob("*.mp3")
    end
  end

  def import
    #Song.new()
  end
end

# MP3Importer.new("./spec/fixtures/mp3s")
