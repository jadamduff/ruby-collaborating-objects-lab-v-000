class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    @files = Dir.entries(@path)
    @files.delete_if {|file| file == "." || file == ".."}
    @files
  end

  def import
    self.files.each do |file|
      new_file = file.split(" - ")
      artist = new_file[0]
      song = new_file[1]

      new_artist = Artist.find_or_create_by_name(artist)
      new_song = Song.new(song)
      new_artist.songs << new_song
      new_song.artist = new_artist
    end
  end
end
