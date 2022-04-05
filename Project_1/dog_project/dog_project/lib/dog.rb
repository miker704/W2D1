class Dog

def initialize(name,breed,age,bark,favFood)

        @name=name
        @breed=breed
        @age=age
        @bark=bark
        @favorite_foods=favFood

end


def name
    return @name
end

def breed
    return @breed
end

def age
    return @age
end

def age=(num)
@age=num
end


def bark

    if @age > 3
        return @bark.upcase
    else
        return @bark.downcase 
    end
end


def favorite_foods
    return @favorite_foods
end


def favorite_food?(str)

# odd way
# return @favorite_foods.map{|food| food.downcase}.include?(str.downcase)

# better way
return @favorite_foods.map(&:downcase).include?(str.downcase)

end

end
