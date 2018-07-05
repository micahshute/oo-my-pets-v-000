require_relative 'cat'
require_relative 'dog'
require_relative 'fish'

class Owner

  @@all = []

  def self.all
    @@all
  end

  attr_reader :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
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

end
