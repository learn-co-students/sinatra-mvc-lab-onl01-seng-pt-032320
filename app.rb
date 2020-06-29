# frozen_string_literal: true

require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    piglatinizer = PigLatinizer.new()
    @latinized_text = piglatinizer.piglatinize(params['user_phrase'])

    erb :latinized
  end
end
