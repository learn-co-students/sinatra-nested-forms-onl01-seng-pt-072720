class Pirate
    attr_accessor :name, :weight, :height

    

    def initialize(pir_hash)
        @name = pir_hash[:name]
        @weight = pir_hash[:weight]
        @height = pir_hash[:height]
    
    end 

end