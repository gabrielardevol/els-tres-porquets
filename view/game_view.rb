class GameView
  def initialize
    # p "gameview initialized"
  end
  def display_rungame(array)
    start_distance = array[0]
    wolf_to_pig_distance = array[1]
    pig_to_house_distance = array[2]
    20.times do
      puts ""
    end
      if wolf_to_pig_distance <= 0
        puts "🌲" * start_distance.to_i + "🐺" + "🍖" +  "🌲" * pig_to_house_distance + "🏠"
      elsif array[2] > 0
        puts "🌲" * start_distance.to_i + "🐺" + "🌲" * wolf_to_pig_distance.to_i + "🐷" + "🌲" * (pig_to_house_distance - 1) + "🏠"
      elsif pig_to_house_distance <= 0
        puts "🌲" * (start_distance.to_i) + "🐺" + "🌲" * wolf_to_pig_distance.to_i + "🏠"
      end
  end

  def pig_wins
    puts "pig wins"
  end

  def pig_looses
    puts "pig looses"
  end
end
