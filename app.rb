require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ship_1 = Ship.all[0]
      @ship_2 = Ship.all[1]
      # binding.pry
      erb :'pirates/show'
    end

  end
end
