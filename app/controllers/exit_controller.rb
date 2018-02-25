require_relative 'app_controller'

class ExitController < AppController
  get('/exit') do
    settings.file.text = ''
    redirect to('/')
  end
end
