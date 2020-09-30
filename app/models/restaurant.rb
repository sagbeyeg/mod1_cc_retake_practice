class Restaurant
    attr_accessor :name, :star_rating, :owner

    @@all = []

    def initialize(owner, name, star_rating)
        @owner = owner
        @name = name
        @star_rating = star_rating
        @@all << self
    end 

    def self.all
        @@all
    end

    def menu_items
        MenuItem.all.select {|item| item.restaurant == self}
    end

    def recipes
        self.menu_items.map {|item| item.recipe}
    end

    def has_dish?(recipe)
        self.recipes.find {|dish| dish == recipe} ? true : false
    end

    def self.highest_rated
        self.all.max {|res_a, res_b| res_a.star_rating <=> res_b.star_rating}
    end
end