class Animation

  def initialize(n = 3, margin = 10)
    @margin = margin
    @n = n
    @margin_L = 0
    @emojis = 1
    @margin_R = @margin - @emojis
  end



  def first
    array = []
    @emojis = 1
    @n.times do
      array << ("💨" * @emojis) + ("  " * (@margin - @emojis))
      @emojis += 1
    end
    array
  end

  def second
    @emojis = @n
    @margin_L = 1
    @margin_R = @margin - @margin_L - @emojis

    array = []

    (@margin - @n).times do
      array << ("  " * @margin_L) + ("💨" * @emojis) + ("  " * @margin_R)
      @margin_L += 1
      @margin_R -= 1
    end
    array
  end

  def third
    @emojis -= 1

    (n-1).times do
      p ("  " * @margin_L) + ("💨" * @emojis)
      @margin_L += 1
      @emojis -= 1
    end
  end
end

(Animation.new(3, 9).first).each do |line|
  p line
end
(Animation.new(3, 9).second).each do |line|
  p line
end
