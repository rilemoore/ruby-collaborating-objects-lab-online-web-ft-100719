class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    
    @path = path
    
  end
  
  def files
    files = []
    Dir.glob(@path + '/*.mp3').each do |f|
      files << f.split("/").last
    end
    files
    
  end
  
  def import
    files.each{ |filename| Song.new_by_filename(filename)}
  end
  
end