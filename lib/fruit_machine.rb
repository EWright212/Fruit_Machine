class FruitMachine

  SINGLE_PLAY_FEE = 5

  attr_reader :game_credit

  def initialize
    @slots = ['black', 'white', 'green', 'yellow']
    @game_credit = 0
  end

  def insert(money)
    @game_credit += money / SINGLE_PLAY_FEE 
  end

  def pull_lever
    @slots.sample(4).join(" | ")
    @game_credit -= 1
  end

end
