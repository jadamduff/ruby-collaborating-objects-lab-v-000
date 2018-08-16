class MP3Importer
  attr_accessor :path :files

  def initialize(filepath)
    @path = filepath
  end

  def files
    @files = Dir.entries(@path)
  end
end
