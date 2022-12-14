class Animation
  def initialize
    @animation = false
  end

  def animate(n, margin)
    @animation = true
    number1 = 1
    n.times do
      # p ("💨" * number1) + ("  " * (n - number1))
      p ("💨" * number1) + ("  " * (margin - number1))
      number1 += 1
    end

    number1 -= 1
    number2 = 1

    crop = 2
    n.times do

     p ("  "*number2 + "💨"*number1)[0..-(number2+1)]
     number2 += 1
     crop += 1
    end

    @animation = false
  end
end

Animation.new.animate(5, 5)
Animation.new.animate(3, 5)
Animation.new.animate(2, 5)
