require_relative "game_view"
class HouseGameView < GameView

  def display_house(n)
    p n
    n = n.to_i
    row6 = "     🧱"
    row5 = "   🧱🧱🧱"
    row4 = " 🧱🧱🧱🧱🧱"
    row3 = "🧱🧱🧱🧱🧱🧱"
    row2 = "🧱🧱    🧱🧱"
    row1 = "🧱🧱🐷🐷🧱🧱"

    margin= "margin"


    puts n >= 23 ? ("#{margin} #{row6}") : nil
    puts n >= 22 ? ("#{margin} #{row5}") : nil
    n > 19 && n < 22 ? puts( " "*(9-((n-19)*2)) + "🧱"*(n - 19)) : nil
    puts n >= 19 ? ("#{margin} #{row4}") : nil
    n > 14 && n < 19 ? puts( " "*(11-((n-14)*2)) + "🧱"*(n - 14)) : nil
    puts n >= 14 ? ("#{margin} #{row3}") : nil
    n > 8 && n < 14 ? puts( " "*(12-((n-8)*2)) + "🧱"*(n - 8)) : nil
    # n > 8 ? fractioned_row(n) : nil
    puts n >= 8 ? ("#{margin} #{row2}") : nil
    n > 4 && n < 8 ? fractioned_row(n) : nil
    puts n >= 4 ? ("#{margin} #{row1}") : nil
    n < 4 ? fractioned_row(n) : nil

  end

  def fractioned_row(n)
    n == 7 ? puts("  🧱    🧱🧱") : nil
    n == 6 ? puts("        🧱🧱") : nil
    n == 5 ? puts("          🧱") : nil
    n == 3 ? puts("  🧱🐷🐷🧱🧱") : nil
    n == 2 ? puts("    🐷🐷🧱🧱") : nil
    n == 1 ? puts("    🐷🐷  🧱") : nil
    n == 0 ? puts("    🐷🐷    ") : nil
  end
end
