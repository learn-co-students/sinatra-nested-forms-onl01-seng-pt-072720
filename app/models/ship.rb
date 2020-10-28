class Ship
    attr_reader :name, :type, :booty
    
    SHIPS = []

    def initialize(params)
        @name = params[:name]
        @type = params[:type]
        @booty = params[:booty]
        @@all << self
    end

    def self.all
        SHIPS
    end

    def self.clear
        SHIPS = []
    end
end