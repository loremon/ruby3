require_relative 'app_controller'

class OpenController < AppController
  get('/open') do
    erb :open
  end

  post('/open') do
    if params['textFile'].nil?
      redirect to('/open')
    else
      settings.file.text = params['textFile']['tempfile'].read
      redirect to('/edit')
    end
  end
end
