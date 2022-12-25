# require_relative "../game_controller.rb"
require_relative "hiding_game_view"
# require_relative "wolf_animation"

class HidingGameController

  def initialize(bricks_left = 23)
    @view = HidingGameView.new
    @n = bricks_left
    @building_timelapse = 3
  end

  def display_scene(bricks_left)
    @view.display_scene(bricks_left)
  end

  def wolf_blows(bricks_left, bricks_to_remove)
    HidingGameView.new(bricks_left).blow(bricks_to_remove)
  end

  def pigs_build(bricks = @n)
    #@view.display_scene(bricks)
    time1 = Time.now
    time2 = nil
    until time2.to_i - time1.to_i >= @building_timelapse
      time2 = Time.new
      @view.display_scene(bricks)
      gets.chomp
      bricks += 1
      bricks > 23 ? bricks = 23 : nil
    end
    @n = bricks # might not be necessary
  end

  def run_game(number)

     until @n <= 0 do
      self.wolf_blows(@n, number)
      # @n -= 1
       @n = @n - number
       @n > 0 ? self.pigs_build(@n) : nil
     end
  end

end


# HidingGameController.new.display_scene(21)

# HidingGameView.new(20).blow(3)

# HidingGameController.new.pigs_build(10)

 HidingGameController.new(21).run_game(12)
