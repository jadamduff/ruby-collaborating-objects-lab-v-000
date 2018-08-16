class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    @songs
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    all.each do |val|
      if val.name == name
        return val
      end
    end
    self.new(name)
  end

  def add_song(song)
    if !songs.include?(song)
      @songs << song
      song.artist = self
    end
  end

  def print_songs
    self.songs.each do |song|
      puts "#{song.name}"
    end
  end
end
