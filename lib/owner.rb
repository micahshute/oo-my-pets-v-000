require_relative 'cat'
require_relative 'dog'
require_relative 'fish'

class Owner

  @@all = []

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  attr_reader :name, :species
  attr_accessor :mood

  def initialize(name, species="human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def buy_cat(name)
    self.pets << Cat.new(name)
  end

  def buy_dog(name)
    self.pets << Dog.new(name)
  end

  def buy_fish(name)
    self.pets << Fish.new(name)
  end

  def say_species
    "I am a #{@species}"
  end

end
