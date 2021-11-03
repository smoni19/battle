class Player
  attr_reader :health
  attr_accessor :name, :attack

  def initialize(name)
    @name = name
    @health = 60
  end

  def damage
    @health -= 10
  end

end

