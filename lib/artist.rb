class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    self.all.find {|artist| aritst.name == name}
  end

  def self.all
    @@all
  end
end
