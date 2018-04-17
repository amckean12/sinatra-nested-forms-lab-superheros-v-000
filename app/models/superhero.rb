class Superhero
  attr_accessor :name, :weight, :height

  SUPERHEROS = []

  def initialize(args)
    @name = args[:name]
    @height = args[:height]
    @weight = args[:weight]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end 
    
end
