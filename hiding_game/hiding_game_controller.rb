require_relative "hiding_game_view"

# he de buscar la forma en què, mitjaçant un atribut running al view, el controller sols sumi si running és faLS

class HidingGameController

  def initialize(bricks_left = 23)
    @view = HidingGameView.new
    @n = bricks_left
    @building_timelapse = 1
  end

  def display_scene(bricks_left)
    @view.display_scene(bricks_left)
  end

  def wolf_blows(bricks_left, bricks_to_remove)
    @view.blow(bricks_left, bricks_to_remove)
  end

  def pigs_build(bricks = @n.to_f)
    #@view.display_scene(bricks)
    time1 = Time.now
    time2 = nil
    until time2.to_i - time1.to_i >= @building_timelapse
      time2 = Time.new
      @view.display_scene(bricks.to_i)
      gets.chomp
      bricks += 1
      bricks > 23 ? bricks = 23 : nil
    end
    @n = bricks # might not be necessary
  end

  def run_game(number)
     5.times do
      self.wolf_blows(@n, number)
       @n = @n - number
       @n > 0 ? self.pigs_build(@n) : nil
       number += 3
     end
  end

end
