class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
  end

  def songs

  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
    if self.all.includes?(name)
      return artist.name
    else
      self.new(name)
      self.save
    end
  end
end
