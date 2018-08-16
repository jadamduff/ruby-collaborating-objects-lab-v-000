class MP3Importer
  attr_accessor :path

  def initialize(filepath)
    @path = filepath
  end

  def files
    @files = Dir.entries(@path)
    @files.each_with_index do |file, index|
      if !file.include?(/\w/)
        @files.delete(index)
      end
    @files
  end
end
