require "./player"

class Game 

  attr_reader :num_life, :players, :current_player

  def initialize(p1, p2)
    @players = [p1, p2]
    @current_place = 0
    @current_player = @players[@current_place]
  end

  def minus_life
    @current_player.life -= 1
    if @current_player.life == 0
      puts "#{@current_player.name}, you lost!"
      puts "Sorry, Game Over"
    end
  end

  def num_life
    puts "Life Remaining: P1 - #{@players[0].life}/3 P2 - #{@players[1].life}/3"
  end

  def change_player
    if @current_player == @players[0]
      @current_player = @players[1]
    else
      @current_player = @players[0]
    end
  end

end
