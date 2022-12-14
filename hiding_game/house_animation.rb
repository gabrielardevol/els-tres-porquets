class House
  attr_accessor :row1, :row2, :row3, :row4, :row5, :row6
  def initialize
    @row4 = " 🧱🧱🧱🧱🧱"
    @row3 = "🧱🧱🧱🧱🧱🧱"
    @row2 = "🧱🧱    🧱🧱"
    @row1 = "🧱🧱🐷🐷🧱🧱"
    @margin = (" " * 12)
    @wolf = "🐺"
  end

  def row6(number)
    case number
    when 23
      "     🧱"
    else
      "       "
    end
  end

  def row5(number)
    case number
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

  def row4(number)

  def blow(frame = 5, blown = 5, margin = 5)
    # @animation.arrays_array(5)
  end

  def display_house(n)
    n = n.to_i
    puts "top"
    n >= 23 ? puts("#{@margin} #{@row6}") : nil
    n >= 22 ? puts("#{@margin} #{@row5}") : nil
    n > 19 && n < 22 ? puts(@margin + " "*(10-((n-19)*2)) + "🧱"*(n - 19)) : nil
    n >= 19 ? puts("#{@margin} #{@row4}") : nil
    n > 14 && n < 19 ? puts(@margin + " "*(12-((n-14)*2)) + "🧱"*(n - 14)) : nil
    n >= 14 ? puts("#{@margin} #{@row3}") : nil
    n > 8 && n < 14 ? puts(@margin + " "*(13-((n-8)*2)) + "🧱"*(n - 8)) : nil
    n >= 8 ? puts("#{@margin} #{@row2}") : nil
    n > 4 && n < 8 ? fractioned_row(n) : nil
    n >= 4 ? puts("#{@wolf} #{@row1}") : nil
    n < 4 ? fractioned_row(n) : nil
    puts "Total bricks: #{n}"
  end

  def fractioned_row(n)
    n == 7 ? puts("#{@margin}   🧱    🧱🧱") : nil
    n == 6 ? puts("#{@margin}         🧱🧱") : nil
    n == 5 ? puts("#{@margin}           🧱") : nil
    n == 3 ? puts("#{@wolf}   🧱🐷🐷🧱🧱") : nil
    n == 2 ? puts("#{@wolf}     🐷🐷🧱🧱") : nil
    n == 1 ? puts("#{@wolf}     🐷🐷  🧱") : nil
    n == 0 ? puts("#{@wolf}     🐷🐷    ") : nil
  end
end
