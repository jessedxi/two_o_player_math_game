class Question
  def initialize 
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @sum = @num1 + @num2
  end 

  def new_question
    puts "What is the sum of #{@num1} & #{@num2}?"
  end 

  def evaluate(answer)
    @sum == answer 
  end 
end 

