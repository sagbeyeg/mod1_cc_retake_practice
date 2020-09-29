class RestaurantOwner
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def restaurants
        Restaurant.all.select {|res| res.owner == self}
    end

    def menu_items
        self.restaurants.map {|res| res.menu_items}
    end
end