class MP3Importer
  attr_accessor :filepath

  def initialize(filepath)
    self.filepath = filepath
  end
  
  def files

  end

  def import
    Song.new()
  end
end
