class Player
attr_accessor:name

def initialize
@name="主人公"
end

def dead(is_dead)
    if is_dead
        @name+"は戦闘不能になりました"
    else
        @name+"は元気です"
    end
end
end

p=Player.new
puts p.dead(false)
puts p.dead(true)

p.name="ヒロイン"
puts p.dead(true)