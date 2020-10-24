#Create two classes, a `Pirate` class and a `Ship` class. Pirates should have a name, weight, and height. 
#You will also need a class method that returns all the pirates. The ship class should have name, type, and booty attributes, 
#as well as a class method `.all` that returns all the ships and a class method `.clear` that deletes all ships.
class Pirate

    attr_accessor :name, :weight, :height

    PIRATES = []

    def initialize(name, weight, height)
        @name = name
        @weight = weight
        @height = height
        PIRATES << self
    end

    def self.all
        PIRATES
    end

    def self.clear
       PIRATES.clear 
    end

end