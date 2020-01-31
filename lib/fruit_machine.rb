class FruitMachine

  SINGLE_PLAY_FEE = 5

  attr_reader :game_credit

  def initialize
    @slots = ['black', 'white', 'green', 'yellow']
    @game_credit = 0
  end

  def display
    @slots.sample(4).join(" | ")
  end

  def insert(money)
    @game_credit += money / SINGLE_PLAY_FEE 
  end

end
