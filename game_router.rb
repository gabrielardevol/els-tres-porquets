require_relative "hiding_game/hiding_game_controller"
require_relative "running_game/running_game_controller"


class GameRouter
  def choose
    puts "1 - Running game | 2 - Hiding game"
    choice = gets.chomp
    case choice
    when "1"
      RunningGameController.new
    when "2"
      HidingGameController.new(23).run_game(5)
    end
  end
end
