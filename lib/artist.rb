class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    self.save
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
    self.all.each do |artist|
      if artist.name == name
        return artist
      end
    end
      artist = Artist.new(name)
  end
end
