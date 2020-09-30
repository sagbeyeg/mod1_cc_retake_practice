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

    def prices
        self.menu_items.map {|item| item.price}
    end

    def average_price
        self.prices.inject {|sum, price| sum + price}  / self.prices.size
    end

    def highest_price
        self.prices.max
    end

    def cheapest_restaurant
        self.menu_items.filter {|res| res.price == self.prices.min}[0].restaurant
    end

    def self.inactive
        self.all.select {|rec| rec.restaurants == []}
    end
end