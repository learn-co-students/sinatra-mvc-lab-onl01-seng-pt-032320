require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    text_from_user = params[:user_phrase]
    @pig_latin = PigLatinizer.new
    @pig_latin.piglatinize(text_from_user)
  end
end
