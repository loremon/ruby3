require 'test_helper'

describe SavedFile do
  describe '#initialize' do
    it 'should be correct constructor' do
      saved_file = SavedFile.new
      saved_file.text.must_equal ''
      saved_file.file_path.must_equal 'public/data.txt'
      saved_file.download_href.must_equal 'data.txt'
    end
  end
  
  describe '#text' do
    it 'should be correct written text' do
      text = 'some_text'
      saved_file = SavedFile.new
      saved_file.text = text
      saved_file.text.must_equal text
    end
  end
end
