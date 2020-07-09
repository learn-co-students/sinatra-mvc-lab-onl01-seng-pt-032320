require_relative 'config/environment'
require_relative 'models/piglatinizer'
class App < Sinatra::Base
  get '/' do
    erb :user_input
  end
  
  post '/' do 
    puts params
    input_from_user = params(:user_phrase)
    newpig = PigLatinizer.new
    @user_phrase = newpig.piglatinize
    erb :converter_output
  end
end