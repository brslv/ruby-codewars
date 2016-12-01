=begin
The State Design Pattern can be used, for example, to manage the state of a tank in the StarCraft game.

The pattern consists in isolating the state logic in different classes rather than having multiple ifs to determine what should happen.

Your Task

Complete the code so that when a Tank goes into SiegeMode it cannot move and its damage goes to 20. When it goes to TankMode it should be able to move and the damage should be set to 5.

You have 3 classes:

Tank: has a state, canMove and damage properties
SiegeState and TankState: has canMove and damage properties
Note: The tank initial state should be TankState.
=end

class State
  attr_accessor :can_move, :damage
end

class SiegeState < State
  def initialize
    @can_move = false
    @damage = 20
  end
end

class TankState < State
  def initialize
    @can_move = true
    @damage = 5
  end
end

class Tank
  attr_accessor :state
  
  def initialize
    @state = TankState.new
  end
  
  def can_move
    state.can_move
  end
  
  def damage
    state.damage
  end
end

tank = Tank.new
p tank.can_move                             # true
p tank.damage                               # 5

tank = Tank.new
tank.state = SiegeState.new
p tank.can_move                             # false
p tank.damage                               # 20

tank = Tank.new
p tank.can_move                             # true
tank.state = SiegeState.new
p tank.damage                               # 20