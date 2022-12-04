require_relative "game_controller.rb"
require_relative "house_game_view"
class HouseGameController < GameController
  def pigs_build
    n = 0
    time1 = Time.now
    time2 = nil
    until time2.to_i - time1.to_i >= 3
      time2 = Time.new
      gets.chomp
      n +=1
    end
    p n
  end
end
