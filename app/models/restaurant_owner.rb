class RestaurantOwner
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age.to_i
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

    def self.average_age
        self.all.map {|owner| owner.age}.sum  / self.all.size
    end

    def sell_restaurant (restaurant, buyer)
        if self.restaurants {|res| res.owner == self}
            restaurant.owner = buyer
        end
    end
end