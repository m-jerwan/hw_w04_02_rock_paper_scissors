class Game

  def initialize(player1, hand1, player2, hand2)
    @hand1 = hand1
    @hand2 = hand2
    @player1 = player1
    @player2 = player2
  end

  def compare
    winner = @player2   #in case of TYPO player2 will win
    return "It's a TIE!" if @hand1 == @hand2
    winner = @player1  if @hand1 == "scissors" && @hand2 == "paper" || @hand1 == "paper" && @hand2 == "rock" || @hand1 == "rock" && @hand2 == "scissors"
    return "#{winner.capitalize} has won!!"
  end

end
