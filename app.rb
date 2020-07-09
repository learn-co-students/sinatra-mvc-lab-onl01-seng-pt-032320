require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/' do 
    @user_phrase = 
    erb :converter_output
  end
end