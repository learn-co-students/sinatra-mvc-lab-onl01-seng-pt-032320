require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :user_input
    end 

    post '/piglatinize' do
        @pig_latin_input = PigLatinizer.new.piglatinize(params[:user_phrase])

        erb :piglatinized
    end

end