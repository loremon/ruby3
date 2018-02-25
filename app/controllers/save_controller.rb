require_relative 'app_controller'

class SaveController < AppController
  get('/save') do
    erb :save, locals: { href: settings.file.download_href }
  end
end
