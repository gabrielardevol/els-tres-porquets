class Animation

  def initialize(frame, n = 2, margin = 5)
    @margin = margin
    @n = n
    @frame = frame
    case frame
    when 0..(n)
      p "#{self.first[frame]}| first"
    when n+1..(n+margin)
      p "#{self.second}| second"
    else
      p "#{self.third[0]}| third"
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
      return("  "*margin + "💨" * @n + "  "*(@margin-@n-margin))

    end
  end

  def third
    @n
    @margin_L = 1
    array = []

    (@n).times do
      string = "  " * (@margin - @margin_L)  +("💨" * @n)
      array << string[0..-1]
      @margin_L -= 1
    end
    return array
  end
end

n = 2
margin = 5
frame = 0
times = n + margin + 1
times.times do
  Animation.new(frame, n, margin)
  frame += 1
end
