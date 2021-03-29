class Round
  attr_accessor :round
  def initialize
    @round = 1
  end 
  
  def increase
    @round += 1
  end 
end 