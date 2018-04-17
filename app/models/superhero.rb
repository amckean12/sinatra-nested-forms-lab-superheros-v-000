class Superhero
  attr_accessor :name, :power, :bio

  SUPERHEROS = []

  def initialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    SUPERHEROS << self
  end

  def self.all
    SUPERHEROS
  end

end
