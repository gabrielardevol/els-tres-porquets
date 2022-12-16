require_relative "wolf_animation"
require_relative "house_animation"

class HidingGameView
  def initialize
    @n = 23
    @sleeptime = 0.1
    @blown = 2
    @margin = 10

    5.times do
      self.blow_animation_1

      @array = [] #reset array
      @n -= 1

      self.blow_animation_2

      @blown += 2
    end
  end

  def house_rows65432(n)
    House.new(n).array[0..-2].each do |row|
      puts "  "*(@margin + 1) + row
    end
  end

  def blow_animation_1
    @array = []
    @frame = 0

    (@margin + 1).times do
      @array << Animation.new(@blown, @margin).arrays_array(@frame)

      house_rows65432(@n)
      puts "🐺" + @array[@frame] + House.new(@n).array[-1]
      sleep(@sleeptime)

      @frame += 1
    end
  end

  def blow_animation_2

    @blown.times do
      house_rows65432(@n)
      puts "🐺" + Animation.new(@blown, @margin).arrays_array(@frame) + House.new(@n).array[-1]
      sleep(@sleeptime)

      @n > 0 ? @n -= 1 : nil
      @frame += 1
    end
  end

end

HidingGameView.new
