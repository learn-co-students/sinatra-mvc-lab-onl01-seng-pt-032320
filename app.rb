require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        phrase = params[:user_phrase]
        string = PigLatinizer.new
        @input = string.piglatinize(phrase)
        erb :piglatinize
    end
end