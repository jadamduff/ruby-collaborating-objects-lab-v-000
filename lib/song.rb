class Song
  attr_accessor :name

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(filename)
    filename = normalize_filename(filename)
    self = self.new(filename[1])
  end

  def self.normalize_filename(filename)
    file_cabinet = filename.split(/ - |\./)
    file_cabinet = [file_cabinet[0], file_cabinet[1]]
    file_cabinet
  end

  def artist=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end

end
