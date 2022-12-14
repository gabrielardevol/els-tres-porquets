class Animation
  def initialize
  end


  def animate(n, margin)
    margin_L = 0
    emojis = 1
    margin_R = margin - emojis

    n.times do
      # p ("💨" * number1) + ("  " * (n - number1))
      p ("💨" * emojis) + ("  " * (margin - emojis))
      emojis += 1
    end

    emojis -= 1

    (margin - n).times do
      margin_L += 1
      p ("  " * margin_L) + ("💨" * emojis) + ("  " * margin_R)
    end

   # n.times do
#
#     p ("  "*number2 + "💨"*number1 + "  "*number3)
#     number3.negative? ? number3 = 0 : nil
#    end
  end
end

# Animation.new.animate(5, 5)
Animation.new.animate(3, 5)
#Animation.new.animate(2, 5)
