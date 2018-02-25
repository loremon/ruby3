require 'sinatra/base'
require_relative '../lib/saved_file'

# Main controller.
class AppController < Sinatra::Base
  set :root, File.expand_path('../..', __FILE__)

  configure do
    saved_file = SavedFile.new
    set :file, saved_file
  end
end
