class MenuItem
    attr_accessor :restaurant, :recipe, :price

    @@all = []

    def initialize(restaurant, recipe, price)
        @restaurant = restaurant
        @recipe = recipe
        @price = price
        @@all << self
    end

    def self.all
        @@all
    end

    def owner
        self.restaurant.owner
    end

    def self.most_expensive_item
        self.all.max {|item_a, item_b| item_a.price <=> item_b.price}
    end
end