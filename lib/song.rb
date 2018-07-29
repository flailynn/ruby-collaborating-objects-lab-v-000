class Song

  attr_accessor :name, :artist

  def initialize(name)
    self.name = name
  end
  
  def self.new_by_filename(filename)
    Song.new(filename)
  end
end
