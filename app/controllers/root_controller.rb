require_relative 'app_controller'
require_relative 'save_controller'
require_relative 'open_controller'
require_relative 'edit_controller'
require_relative 'about_controller'
require_relative 'exit_controller'

class RootController < AppController
  use SaveController
  use OpenController
  use EditController
  use AboutController
  use ExitController

  get('/') do
    erb :index
  end

  get('*') do
    redirect to('/')
  end

  post('*') do
    redirect to('/')
  end
end
