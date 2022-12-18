class House
  #returns array of rows for a given brick quantity. You can call single brick rows.
  attr_accessor :row1, :row2, :row3, :row4, :row5, :row6
  def initialize(number = 23)
    @number = number
  end

  def array
    array = []
    array << row6
    array << row5
    array << row4
    array << row3
    array << row2
    array << row1
  end

  def row6
    case @number
    when 23
      "     🧱"
    else
      "       "
    end
  end

  def row5
    case @number
    when 22..23
      "   🧱🧱🧱"
    when 21
      "     🧱🧱"
    when 20
      "       🧱"
    else
      "         "
    end
  end

  def row4
    case @number
    when 19..23
      " 🧱🧱🧱🧱🧱"
    when 18
      "   🧱🧱🧱🧱"
    when 17
      "     🧱🧱🧱"
    when 16
      "       🧱🧱"
    when 15
      "         🧱"
    else
      "          "
    end
  end

  def row3
    case @number
    when 14..23
      "🧱🧱🧱🧱🧱🧱"
    when 13
      "  🧱🧱🧱🧱🧱"
    when 12
      "    🧱🧱🧱🧱"
    when 11
      "      🧱🧱🧱"
    when 10
      "        🧱🧱"
    when 9
      "          🧱"
    else
      "            "
    end
  end

  def row2
    case @number
    when 8..23
      "🧱🧱  🐷🧱🧱"
    when 7
      "  🧱  🐷🧱🧱"
    when 6
      "      🐷🧱🧱"
    when 5
      "      🐷  🧱"
    else
      "      🐷    "
    end
  end

  def row1
    case @number
    when 4..23
      "🧱🧱🐷🐷🧱🧱"
    when 3
      "  🧱🐷🐷🧱🧱"
    when 2
      "    🐷🐷🧱🧱"
    when 1
      "    🐷🐷  🧱"
    else
      "    🐷🐷    "
    end
  end

end

# p House.new(3).row1
