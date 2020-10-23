require './environment'
require_relative './app/models/pirate.rb'
require_relative './app/models/ship.rb'
# require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])

      # Ship.clear
      new_ships_array = params[:pirate][:ships].map do |specs|
        Ship.new(specs[:name], specs[:type], specs[:booty])
      end

      @ship_1 = new_ships_array.first
      @ship_2 = new_ships_array.last
      # binding.pry

      erb :'pirates/show'
    end

  end
end
