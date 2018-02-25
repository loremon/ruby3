require 'simplecov'
SimpleCov.start do
  add_filter '/test/'
end
require 'minitest/autorun'
require 'saved_file'
require 'capybara/minitest'

class CapybaraTestCase < Minitest::Test
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
