require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]
    erb :results
    @what = "Number of Words: #{text_from_user.count}"
  end

  
end
