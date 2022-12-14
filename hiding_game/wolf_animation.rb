class Animation

  def initialize(frame, n = 8, margin = 6)
    @margin = margin
    @n = n
    case frame
    when 0..(margin-1)
      p self.first[frame]
    when margin..(n-1)
      p self.second
    else
      p self.third[frame - n]
    end
  end

  def first
    array = []
    @emojis = 1
    @margin.times do
      @margin -= 1
      array << ("💨" * @emojis) + ("  " * (@margin))
      @emojis += 1
    end
    array
  end

  def second
    return("💨" * @margin)
  end

  def third
    @emojis = @n
    @margin_L = 1
    array = []

    (@n-1).times do
      array << (("  " * @margin_L ) + ("💨" * @emojis))[0..(@margin-@n-2)]
      @margin_L += 1
      @emojis -= 1
    end
    array
  end
end

n = 2
margin = 5
frame = 0
times = n + margin - 1
times.times do
  Animation.new(frame, n, margin)
  frame += 1
end
