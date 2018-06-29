class Genre
  attr_accessor :name
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    self.all << self
  end

  def new_song(name, artist)
    new_song = Song.new(name, artist, self)
  end

  def songs

  end

  def artists

  end
end
