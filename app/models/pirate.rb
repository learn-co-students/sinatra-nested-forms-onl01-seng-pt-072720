class Pirate
    attr_accessor :name,  :weight, :height

    def initialize(pirate_hash)
        @name = pirate_hash[:name]
        @weight = pirate_hash[:weight]
        @height = pirate_hash[:height]
    end

end