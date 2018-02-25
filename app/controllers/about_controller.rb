require_relative 'app_controller'

class AboutController < AppController
  get('/about') do
    erb :about
  end
end
