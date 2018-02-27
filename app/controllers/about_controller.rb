require_relative 'app_controller'

# /about href controller.
class AboutController < AppController
  get('/about') do
    erb :about
  end
end
