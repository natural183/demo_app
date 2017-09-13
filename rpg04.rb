class Battle

  def initialize(player, monster)
    @player = player
    @monster = monster
  end

  def attack
    damage = 3
    puts @player.name + "の攻撃！！ %iのダメージ" % damage
    @player.health_point = @player.health_point - damage

    puts @monster.name + "の攻撃！！ %iのダメージ" % damage
    @monster.health_point = @monster.health_point - damage
    puts ""

    @player.dead? or @monster.dead? # どちらかのキャラクターの hp が無くなったかの判定
  end

  def judges
    if @player.dead? and @monster.dead?
      puts "相打ちになりました…"
    elsif @monster.dead?
      puts "主人公が勝ちました！"
    elsif @player.dead?
      puts "モンスターが勝ちました！"
    end
  end
end

#ゲームクラス
class Game
    
    #ゲーム開始
    def start
        player=Player.new
        monster=Monster.new
        battle=Battele.new(player,monster)
        decision=false
        until decision do
            puts "------------------"
            puts "主人公　HP：%i,<->モンスター　HP：%i" % [plater.health_point,monster.health_point]
            print "ENTERキーを押下すると実行,3を入力すると終了>"
            input=gets.chomp.to_i
            exit if(input==3)
            decision=battle.attack
        end
        battle.judges
    end
    
end
