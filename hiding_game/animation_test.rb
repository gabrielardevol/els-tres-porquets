class Animation

  def animate(n, margin)
    margin_L = 0
    emojis = 1
    margin_R = margin - emojis

    n.times do
      p ("💨" * emojis) + ("  " * (margin - emojis))
      emojis += 1
    end

    emojis -= 1
    margin_L = 1
    margin_R = margin - margin_L - emojis

    (margin - n).times do
      p ("  " * margin_L) + ("💨" * emojis) + ("  " * margin_R)
      margin_L += 1
      margin_R -= 1
    end

    emojis -= 1

    (n-1).times do
      p ("  " * margin_L) + ("💨" * emojis)
      margin_L += 1
      emojis -= 1
    end
  end
end

Animation.new.animate(1, 9)
