class Artist
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def self.all
    @@all
  end
end
