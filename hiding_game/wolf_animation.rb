class Animation

  def initialize(n = 3, margin = 6, frame = 1)
    @margin = margin
    @n = n
    case frame
    when 0..(n-1)
      p self.first[frame]
    when n..(margin-1)
      p self.second[frame - margin]
    when margin..99
      p self.third[frame - margin]
    end
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
    @emojis = @n - 1
    @margin_L = @margin - @emojis
    array = []

    (@n-1).times do
      array << ("  " * @margin_L) + ("💨" * @emojis)
      @margin_L += 1
      @emojis -= 1
    end
    array
  end
end


Animation.new(2,5,0)
Animation.new(2,5,1)
Animation.new(2,5,2)
Animation.new(2,5,3)
Animation.new(2,5,4)
Animation.new(2,5,5)
Animation.new(2,5,6)
Animation.new(2,5,7)
