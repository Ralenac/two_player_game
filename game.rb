require "./question"
require "./player"

class Game


  def initialize
    @player1 = Player.new("Player one")
    @player2 = Player.new("Player two")
    @current_player = @player1
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end


  def start_game 
    puts "------------------------------------------------"
    puts "Hello! Welcome to Math Game"
    puts "\n"
    puts "--------- Let's start! ---------"
    puts "\n"
    puts "Player one starts first! "
    puts "\n"

    loop do
      
      
      question = Question.new
      puts "Here is a question for #{@current_player.name}"
      puts puts "What does #{question.number_one} plus #{question.number_two} equal?"

      answer = gets.chomp.to_i
      if answer == question.solution
        puts "\n"
        puts "#{answer} is Correct Answer! Well done #{@current_player.name}!"
        @current_player.score +=1
        puts "\n"
      else
        puts "\n"
        puts "#{answer} is Wrong Answer #{@current_player.name}! The correct answer is #{question.solution}"
        @current_player.lives -=1
        puts "\n"
      end

     
      puts "#{@player1.name} - #{@player1.lives}/3 and #{@player2.name} - #{@player2.lives}/3 "
      puts "\n"
    
      if @current_player.lives == 0
        break
      end
      
      new_turn
    
    end 

    end_game
  end

  def new_turn
    puts "---- NEW TURN ----"
    puts "\n"
    switch_player
  end

  def end_game
    switch_player
    puts "#{@current_player.name} wins with a score of #{@current_player.score}/3"
    puts "---- GAME OVER ----"
  end


end




