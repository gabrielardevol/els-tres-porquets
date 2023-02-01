# require_relative "../running_game_controller.rb"
require_relative "hiding_game_view"
# require_relative "wolf_animation"

class HidingRunningGameController

  def initialize
    @view = HidingGameView.new
    @n = 23
    @building_timelapse = 3
  end

  def display_scene
    @view.display_scene(@n)
  end

  def run_game(number)
    until @n <= 0 do
    self.wolf_blows(number, @n)
    @n = @n - number
    @n > 0 ? self.pigs_build : nil
    end
  end

  def wolf_blows(number, bricks_left)
    HidingGameView.new(bricks_left).blow_animation_1(number)
    #HidingGameView.new(bricks_left).blow_animation_2(number)
    # return @n = @n - number
  end

  def pigs_build
    puts "pigs build"
    time1 = Time.now
    time2 = nil
    until time2.to_i - time1.to_i >= @building_timelapse
      time2 = Time.new
      @view.display_scene(@n)
      gets.chomp
      @n += 1
      @n > 23 ? @n = 23 : nil
    end
    return @n
  end


  # def quit_bricks(number)
  #   number.times do
  #     @n < 0 ? @n = 0 : nil
  #     @view.display_hiding(@n)
  #     @n -= 1
  #     @n == 0 ? puts("wolf wins") : nil
  #     @view.blow(number)
  #     sleep(0.35)
  #   end
  # end
end

hgc = HidingRunningGameController.new
hgc.run_game(10)
hgc.display_scene
