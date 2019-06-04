require './environment'

module FormsLab
  class App < Sinatra::Base
    set :views, 'views/pirates'

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:height])
      params[:pirate][:ships].each do |info|
        Ship.new(name: info[:name], type: info[:type], booty: info[:booty])
      end
      @ships = Ship.all
      erb :show
    end

  end
end
