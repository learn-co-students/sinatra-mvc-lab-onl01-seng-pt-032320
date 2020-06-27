require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        #binding.pry 
        @text = params[:user_phrase]

        erb :latinize
    end
end 

