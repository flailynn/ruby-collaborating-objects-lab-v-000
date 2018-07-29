require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    self.path = filepath
  end

  def files
    string = Dir(self.path)
    puts string
  end

  def import
    Song.new()
  end
end
