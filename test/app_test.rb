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
  
  def test_about_page
    visit('/about')
    assert_text 'О приложении'
  end
end
