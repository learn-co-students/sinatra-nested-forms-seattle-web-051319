require './environment'

# 3. After a user clicks submit they should be taken to a page that displays all the information we just posted from the form.  You should have a page that shows the pirate you created along with their ships and all the details about the pirate and their ships.

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
    	erb :root
    end

    get '/new' do
    	erb :'/pirates/new'
    end

    post '/pirates' do
    	@pirate = Pirate.new(params[:pirate])
    	params[:pirate][:ships].each do |details|
    		Ship.new(details)
    	end
    	@ships = Ship.all

    	erb :'/pirates/show'
    end

  end
end
