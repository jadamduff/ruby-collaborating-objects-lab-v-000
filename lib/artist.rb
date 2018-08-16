class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  end

  def songs

  end

  def all
    @@all
  end

  def save
    all << self
  end
end
