# inheritance allows us to extend the functionality of one class into another class
class Chef
    def make_chicken
        puts "The chef makes chicken"
    end 
    def make_salad
        puts "The chef makes salad"
    end 
    def make_special_dish
        puts "The chef makes bbq ribs"
    end  
end 

# Creating an instance/object of chef
chef1 = Chef.new

chef1.make_chicken