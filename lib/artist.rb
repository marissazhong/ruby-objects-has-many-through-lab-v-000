class Artist
  attr_accessor :name
  @@all = []

  def self.all
    @all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    self.name = new_song.artist
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def genres
    Song.all.select {|song| song.genre}
  end

end
