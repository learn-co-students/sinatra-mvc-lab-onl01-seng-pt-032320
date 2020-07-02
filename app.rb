require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :user_input
  end
  
  post '/result' do
    word = PigLatinizer.new()
    @result = word.piglatinize(params[:user_text])
    erb :results
  end
end