class Player
  attr_accessor :name, :health_point, :attack

  def initialize
    @name = "主人公"
    @health_point = 10
    @attack = 5
  end

  def dead(is_dead)
    if is_dead
      @name
    else
      "主人公は元気です"
    end
  end
end

p = Player.new
puts p.name
puts p.health_point
puts p.attack
