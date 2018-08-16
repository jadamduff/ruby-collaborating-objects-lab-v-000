class MP3Importer
  attr_accessor :path

  def initialize(test_music_path)
    @path = test_music_path
  end

  def files
    Dir.entries(self.path).slice(1, Dir.entries(self.path).length - 2)
  end

  def normalize_filenames
    file_cabinet = []

    self.files.each do |file|
      cont = file.slice(/ - |\./)
      cont = [cont[0], cont[1]]
      file_cabinet << cont
    end
    file_cabinet
  end

  def import
    files = normalize_filenames
    files.each do |x|
      song = Song.new_by_filename(files)
  
    end
  end

end
