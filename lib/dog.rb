class Dog

  attr_reader :name
  attr_accessor :moode

  def initialize(name, mood="nervous")
    @name = name
    @mood = mood
  end

end
