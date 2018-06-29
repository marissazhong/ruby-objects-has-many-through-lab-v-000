class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @all
  end

  def initialize(name)
    @name = name
    self.all << self
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end

  def songs

  end

  def genres

  end

end
