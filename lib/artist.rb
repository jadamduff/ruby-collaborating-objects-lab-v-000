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
    if self.all.include?(name)
      return name
    else
      artist = self.new(name)
      artist.save
    end
  end
end
