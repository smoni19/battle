class Player
  attr_reader :health
  attr_accessor :name, :attack

  DEFAULT_HEALTH = 60

  def initialize(name, health = DEFAULT_HEALTH)
    @name = name
    @health = health
  end

  def receive_damage
    @health -= 10
  end

end
