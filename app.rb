# inheritance allows us to extend the functionality of one class into another class
# Single inheritance-one or more sub-classes inherits the behaviour of one super/base class
# Purpose of single-inheritance is to specialize a base class
# Multiple inheritance- one or more sub-classes inherit the behaviour of more than one base class.

# MOdule-is a collection of behaviours/methods
# Mix-in-bringing of the modules into the programme---The modules are mixed in using the include keyword(include ModuleName)
module CanSwim
    def swim
        puts "I can swim!"
    end    
end 

module Walkable
    def walk
        puts "I can walk!"
    end    
end 
class Pet
    def move 
        puts "I can move" 
    end
end
# Pet is the super/base class while Dog is it's sub-class hence inherits some of it's functionalities
class Dog < Pet
    include CanSwim
    include Walkable
end

class Cat < Pet
    include Walkable
end

class Fish < Pet
    include CanSwim
end

dog = Dog.new
cat = Cat.new
fish = Fish.new

[dog, fish].each {|pet| pet.swim}
cat.walk

# 
p Dog.ancestors

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

# Creating another class of a chef- italianChef.
# Italianchef is considered a sub class of chef
# We can use inheritance to pass downn the functionality of the class Chef to ItalianChef by the <(inheritance operator)
# We can always overwrite the first class
class ItalianChef < Chef
    def make_special_dish
        puts "The chef makes eggplant palm"
    end   
    
    def make_pasta
        puts "The chef makes pasta"
    end 
end    

# Creating an instance/object of chef
chef1 = Chef.new

chef1.make_chicken

italianChef1 = ItalianChef.new

italianChef1.make_salad

italianChef1.make_special_dish

italianChef1.make_pasta

# include is used to add functionality to our classes via instance methods.
# In order to lend a module's methods to a class as class methods, we use the extend keyword.
# And extend is used to add functionality to our classes via class methods. 
# we extend the class to the module then we can now access the method we want vie the .method 
# If you have a module whose methods you would like to be used in another class as instance methods, then you must include the module.
# If you want a module's methods to be used in another class as class methods, you must extend the module.

# EXAMPLE 2
module Say_Hello
    def say_hello
        puts "Hello #{@name}"
    end    
end

class Person
    def initialize name
        @name = name
    end    
end 

person = Person.new("Tichi")

person.extend Say_Hello
person.say_hello


# Require_relative is used to access a different class 


# SUPER-it allows us to call a method in the super class or higher class
# Module is always of a higher priority over the super class hence when we include a module and super in our sub class , module will be output first before the super class