class Superhero
  attr_accessor :name, :power, :bio

  SUPERHEROS = []

  def initialize(opts={})
    @name = opts[:name]
    @power = opts[:power]
    @bio = opts[:bio]
    self.save
  end

  def save 
    self.class.all << self
  end 
end
