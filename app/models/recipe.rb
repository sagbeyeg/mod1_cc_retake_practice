class Recipe
    attr_reader :name
    attr_accessor :description

    @@all = []

    def initialize(name, description)
        @name = name
        @description = description
        @@all << self
    end 

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select {|item| item.recipe == self}
    end

    def restaurants
        self.menu_items.map {|item| item.restaurant}
    end
end