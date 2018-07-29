require 'pry'

class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    self.path = filepath
  end

  def files
    string = Dir(self.path)
    binding.pry
    puts string
  end

  def import
    Song.new()
  end
end

MP3Importer.new("./spec/fixtures/mp3s")
