class Artist
  attr_accessor :name, :genre
  @@all = []

  def self.all
    @all
  end

  def initialize(name)
    @name = name
    self.all << self
  end

  def new_song(name, genre)
    new_song = Song.new(name)
  end

  def songs

  end

  def genres

  end

end
