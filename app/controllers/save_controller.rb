require_relative 'app_controller'

# /save href controller.
class SaveController < AppController
  get('/save') do
    erb :save, locals: { href: settings.file.download_href }
  end
end
