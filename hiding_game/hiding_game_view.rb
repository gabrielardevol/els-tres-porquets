require_relative "blow_animation"
require_relative "house_animation"

class HidingGameView
  def initialize(n = 23)
    @n = n
    @sleeptime = 0.1
    @margin = 5
    @frame = 0
  end

  def blow(blown)
    self.blow_animation_1(blown)

    @array = [] #reset array
    @n -= 1

    self.blow_animation_2(blown)

    blown += 2
  end

  def display_scene(bricks)
    House.new(bricks).array[0..-2].each do |row|
      puts "  "*(@margin + 1) + row
    end
    puts "🐺" + "  " * @margin + House.new(bricks).array[-1]
  end

  private

  def house_rows65432(n)
    House.new(n).array[0..-2].each do |row|
      puts "  " * (@margin + 1) + row
    end
  end


  def blow_animation_1(blown)
    @array = []
    @frame = 0

    (@margin + 1).times do
      @array = Blow.new(blown, @margin).arrays_array

      house_rows65432(@n)
      puts "🐺" + @array[@frame] + House.new(@n).array[-1]
      sleep(@sleeptime)

      @frame += 1
    end
  end

  def blow_animation_2(blown)
    @frame = @margin + 1
    blown.times do

      house_rows65432(@n)
      puts "🐺" + Blow.new(blown, @margin).arrays_array[@frame] + House.new(@n).array[-1]
      sleep(@sleeptime)
      @n > 0 ? @n -= 1 : nil

      @frame += 1
    end
  end
end



# HidingGameView.new.house_rows65432(23) WON'T WORK - PRIVATE METHOD

# HidingGameView.new(23).running(5)

# HidingGameView.new(10).blow(5)
# HidingGameView.new(10).blow_animation_2(5)
# HidingGameView.new(23).display_scene(22)
