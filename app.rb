require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do 
      erb :root
    end 

    get 'pirates' do 
      @pirates = Pirate.all 

      erb :'pirates/index'
    end 

    get 'pirates/new' do 
      erb :'pirates/new' 
    end 

    get '/pirates/:id' do 
      @pirate = Pirate.find(params[:id])

      erb :'pirates/show'
    end 
    
    post '/pirates' do 
      pirate = Pirate.new(params[:pirate])
      
      params[:pirate][:ships].each do |ship_details|
        ship = Ship.new(ship_details)
        ship.pirate = pirate 
        ship.save
      end  
  
      redirect to 'pirates/#{pirate.id}'
      # go to localhost:9393/pirates/this pirate's id
    end 
  end
end