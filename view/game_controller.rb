require_relative "game"
require_relative "game_view"

class GameController
  def initialize(start_distance = 0, wolf_to_pig_distance = 20, pig_to_house_distance = 80, time_duration = 11.9)
    @game = Game.new(start_distance, wolf_to_pig_distance, pig_to_house_distance, time_duration)
    @view = GameView.new
    self.run
  end

  def run
      until @game.distances_array[2] == 0 || @game.distances_array[1] <= 0 do
        @game.wolf_runs(Time.now)
        @game.pig_runs
        puts @view.display(@game.distances_array)
        gets.chomp
      end
      if @game.distances_array[2] <= 0
        puts "pig got to house"
      elsif @game.distances_array[1] <= 0
        puts "pig got eaten"
      end
  end
end
