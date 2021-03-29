class Game

  def iniitalize()
  end 

  def question
    question = Question.new 
    question.new_question
    puts '> '
    @answer = gets.chomp
    if question.evaluate(@answer.to_i)
      puts "You got it!"
    else 
      puts "ABSOLUTELY NOT!"
      @current_player.lost_life
    end 
  end 


def victory(player)
  puts "#{player} wins the game!"
  exit(0)
end 

def score_check
  if @p1.game_over
    victory(@p2.name)
  elsif @p2.game_over
    victory(@p1.name)
  end 
end 


  def turn
    puts '***********'
    puts "Round #{@rounds.round}"
    puts '***********'
    @current_player = @p1
    puts "#{@current_player.name}, you first!"
    question
    score_check
    @current_player = @p2
    puts "#{@current_player.name}, you next!"
    question
    score_check
    game_stats
    @rounds.increase
    turn
  end 

  def game_stats
    puts '**********'
    puts "Player One: #{@p1.lives}/3 - Player Two: #{@p2.lives} /3"
    puts '**********'
  end 

  def start
    puts "A new challenger approaches!"
    puts "Player One! Please enter your name:"
    @p1 = Player.new(gets.chomp)
    puts "Player Two! Please enter your name:"
    @p2 = Player.new(gets.chomp)
    puts "New game has started."
    puts "Welcome #{@p1.name}."
    puts "Welcome #{@p2.name}."
    @rounds = Round.new
    turn 
  end 
end

 

  

   
  



  


  