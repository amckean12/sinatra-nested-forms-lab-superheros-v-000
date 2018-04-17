class Superhero
  attr_accessor :name, :power, :bio

  SUPERHEROS = []

  def initialize(args)
    @name = args[:name]
    @power = args[:height]
    @bio = args[:weight]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end

end
