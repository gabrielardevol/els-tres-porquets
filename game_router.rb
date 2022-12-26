require_relative "hiding_game/hiding_game_controller"


class GameRouter
  def choose
    puts "choose"
    choice = gets.chomp
    case choice
    when "1"
      HidingGameController.new(23).run_game(3)
    when "2"
      "running game"
    end
  end

end

# Router.new.choose
