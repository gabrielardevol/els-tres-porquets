require_relative "blow_animation"
require_relative "house_animation"

class HidingGameView
  attr_reader :running

  def initialize(n = 23)
    @n = n
    @sleeptime = 0.3
    @margin = 5
    @frame = 0
    @running = false
  end

  def blow(num, blown)
    @running = true
    self.blow_animation_1(num, blown)
    @array = [] #reset array
    num -= 1
    self.blow_animation_2(num, blown)
    blown += 2
    @running = false
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


  def blow_animation_1(num, blown)
    @array = []
    @frame = 0

    (@margin + 1).times do
      @array = Blow.new(blown, @margin).arrays_array

      house_rows65432(num)
      puts "🐺" + @array[@frame] + House.new(num).array[-1]
      sleep(@sleeptime)

      @frame += 1
    end
  end

  def blow_animation_2(num, blown)
    @frame = @margin + 1
    blown.times do

      house_rows65432(num)
      puts "🐺" + Blow.new(blown, @margin).arrays_array[@frame] + House.new(num).array[-1]
      sleep(@sleeptime)
      num > 0 ? num -= 1 : nil

      @frame += 1
    end
  end
end



# HidingGameView.new.house_rows65432(23) WON'T WORK - PRIVATE METHOD

# puts HidingGameView.new.running

# HidingGameView.new.blow(5, 5)
# HidingGameView.new(10).blow_animation_2(5)
# HidingGameView.new(23).display_scene(22)
