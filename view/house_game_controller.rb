require_relative "game_controller.rb"
require_relative "house_game_view"
class HouseGameController < GameController
  def initialize
    @view = HouseGameView.new
    @n = 23
  end

  def pigs_build
    time1 = Time.now
    time2 = nil
    until time2.to_i - time1.to_i >= 3
      gets.chomp
      time2 = Time.new
      @n += 1
      @n > 23 ? @n = 23 : nil
      @view.display_house(@n.to_i)
    end
  end

  def wolf_blows(less_bricks)
    less_bricks.times do
      @view.display_house(@n)
      @n -= 1
      @n <= 0 ? puts("wolf wins") : nil
      sleep(0.5)
    end
    pigs_build
  end
end
