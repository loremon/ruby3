require_relative 'app_controller'

# /aftersave href controller.
class AfterSaveController < AppController
  get('/aftersave') do
    erb :after_save
  end
end
