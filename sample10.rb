class Player
  def initialize
    puts "オブジェクトを生成"
  end
  
  def dead(is_dead)
    if is_dead
      "主人公は戦闘不能になりました"
    else
      "主人公は元気です"
    end
  end
end

Player.new