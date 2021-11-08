class Question
  attr_accessor :number_one, :number_two, :solution

  def initialize
    @number_one = rand(1..90)
    @number_two = rand(1..90)
    @solution = @number_one + @number_two
  end

end