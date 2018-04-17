class Team 

  attr_accessor :name, :motto

  @@teams = []

  def initialize(args)
    @name = args[:name]
    @motto = args[:motto]
    @@teams << self
  end

  
end 
