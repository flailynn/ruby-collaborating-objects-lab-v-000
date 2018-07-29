require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    self.path = filepath
    self.files
  end

  def files
    Dir.chdir(self.path)
    string = Dir.glob("*.mp3")
    binding.pry
  end

  def import
    Song.new()
  end
end

MP3Importer.new("./spec/fixtures/mp3s")
