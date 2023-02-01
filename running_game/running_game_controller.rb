require_relative 'game'
require_relative 'game_view'
# RunningGameController
class RunningGameController
  # TODO: pass hash as an argument
  def initialize(hash = {
    start_distance: 0,
    wolf_to_pig_distance: 20,
    pig_to_hiding_distance: 80,
    game_duration: 11.95
  })

    @game = Game.new(hash)
    @view = GameView.new
    # run
    pig_runs
  end

  def pig_runs
    until @game.distances_array[2].zero? || @game.distances_array[1] <= 0
      @game.wolf_runs(Time.now)
      @game.pig_runs
      @game.distances_array
      puts @view.display_rungame(@game.distances_array)
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
