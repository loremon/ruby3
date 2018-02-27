require_relative 'test_helper'
require_relative '../app/controllers/app_controller'
class AppTestCase < CapybaraTestCase
  def setup
    Capybara.app = Rack::Builder.parse_file(File.expand_path('../../app/config.ru', __FILE__)).first
  end

  def test_home_page
    visit('/')
    assert_text 'Текстовый редактор'
  end

  def test_redirect_home_page
    visit('rejgreg')
    assert_text 'Текстовый редактор'
  end
  
  def test_about_page
    visit('/about')
    assert_text 'О приложении'
  end
  
  def test_edit_page
    visit('/edit')
    assert_selector 'textarea'
  end
  
  def test_edit_page
    visit('/new')
    assert_selector 'textarea'
  end
  
  def test_after_save_page
    visit('/aftersave')
    assert_text 'Файл загружен'
  end
  
  def test_open_page
    visit('/open')
    assert_text 'Открытие файла'
  end
  
  def test_exit
    visit('/exit')
    assert_text 'Текстовый редактор'
  end
  
  def test_load_file
    file = File.open('public/test.txt', 'w')
    file.write('test text')
    file.close
    params = { textFile: { tempfile: file } }
    page.driver.post('/open', params)
  end
  
  def test_no_file_open
    visit('/open')
    find('input[@type=submit]').click
    assert_text 'Открытие файла'
  end
  
  def test_save_page
    visit '/save'
    assert_text 'Загрузка файла'
  end
  
  def test_save_text
    page.driver.post('/edit', { :params => { :text => 'test text' } })
    
    #print find('textarea').value
  end
    
end
