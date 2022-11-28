require_relative 'game'
require_relative 'game_view'
# GameController
class GameController
  # TODO: pass hash as an argument
  def initialize(start_distance = 0, wolf_to_pig_distance = 20, pig_to_house_distance = 80, time_duration = 11.9)
    @game = Game.new(start_distance, wolf_to_pig_distance, pig_to_house_distance, time_duration)
    @view = GameView.new
    run
  end

  def run
    until @game.distances_array[2].zero? || @game.distances_array[1] <= 0
      @game.wolf_runs(Time.now)
      @game.pig_runs
      puts @view.display(@game.distances_array)
      gets.chomp
    end
    run_result
  end

  def run_result
    if @game.distances_array[2] <= 0
      @view.pig_wins
    elsif @game.distances_array[1] <= 0
      @view.pig_looses
    end
  end
end
