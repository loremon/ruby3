# Work with server text file.
class SavedFile
  attr_accessor :file_path
  attr_accessor :download_href

  def initialize
    @file_path = 'public/data.txt'
    File.open(@file_path, 'w').close
    @download_href = 'data.txt'
  end

  def text
    File.exist?(@file_path) ? File.read(@file_path) : ''
  end

  def text=(text)
    file = File.open(@file_path, 'w')
    file.write(text)
    file.close
  end
end
