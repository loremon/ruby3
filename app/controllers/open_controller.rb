require_relative 'app_controller'

class OpenController < AppController
  get('/open') do
    erb :open
  end

  post('/open') do
    unless params['textFile'].nil?
      settings.file.text = params['textFile']['tempfile'].read
    end
    redirect to('/edit')
  end
end
