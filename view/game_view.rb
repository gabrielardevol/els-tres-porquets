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

  def bricks(n)
    n = n.to_i
    row6 = "     🧱"
    row5 = "   🧱🧱🧱"
    row4 = " 🧱🧱🧱🧱🧱"
    row3 = "🧱🧱🧱🧱🧱🧱"
    row2 = "🧱🧱    🧱🧱"
    row1 = "🧱🧱🐷🐷🧱🧱"

    # o bé "puts n >= 8 ? row2 : nil", per tenir espai buit
    puts n >= 23 ? (row6) : nil
    puts n >= 22 ? (row5) : nil
    n > 19 && n < 22 ? puts( " "*(9-((n-19)*2)) + "🧱"*(n - 19)) : nil
    puts n >= 19 ? (row4) : nil
    n > 14 && n < 19 ? puts( " "*(11-((n-14)*2)) + "🧱"*(n - 14)) : nil
    puts n >= 14 ? (row3) : nil
    n > 8 && n < 14 ? puts( " "*(12-((n-8)*2)) + "🧱"*(n - 8)) : nil
    puts n >= 8 ? (row2) : nil
    puts n >= 4 ? (row1) : nil
    # case n
    # when n >= 4
    #   puts row1
    # when n >= 8
    #   puts row2
    #   puts row1
    # when n >= 14
    #   puts row3
    #   puts row2
    #   puts row1
    # when n >= 19
    #   puts row4
    #   puts row3
    #   puts row2
    #   puts row1
    # when n >= 22
    #   puts row5
    #   puts row4
    #   puts row3
    #   puts row2
    #   puts row1
    # when n >= 23
    #   puts row6
    #   puts row5
    #   puts row4
    #   puts  row3
    #   puts  row2
    #   puts  row1
    # end
  end
end
