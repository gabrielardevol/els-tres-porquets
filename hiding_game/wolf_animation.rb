class Animation

  def initialize(frame, n = 2, margin = 5)
    @margin = margin
    @n = n
    @frame = frame
    case frame
    when 0..(n)
      p self.first[frame]
    when n+1..(n+margin-1)
      p self.second
    else
      p self.third[frame - n]
    end
  end

  def first
    array = []
    @emojis = 0
    @margin.times do
      array << ("💨" * @emojis) + ("  " * (@margin))
      @margin -= 1
      @emojis += 1
    end
    array
  end

  def second
    if @n > @margin
      return("💨" * @margin)
    else
      margin = @frame - @n
      return("  "*margin + "💨" * @n)

    end
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
