require_relative 'app_controller'

class EditController < AppController
  get('/edit') do
    erb :edit, locals: { text: settings.file.text }
  end

  post('/edit') do
    settings.file.text = params['text']
    redirect to('/save')
  end
end
