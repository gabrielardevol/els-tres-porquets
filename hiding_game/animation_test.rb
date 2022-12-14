class Animation

  def initialize(n, margin)
    @margin = margin
    @n = n
    @margin_L = 0
    @emojis = 1
    @margin_R = @margin - @emojis


    def second
      @emojis -= 1
      @margin_L = 1
      @margin_R = @margin - @margin_L - @emojis

      (@margin - @n).times do
        p ("  " * @margin_L) + ("💨" * @emojis) + ("  " * @margin_R)
        @margin_L += 1
        @margin_R -= 1
      end
    end

    @emojis -= 1

    def third
      (n-1).times do
        p ("  " * @margin_L) + ("💨" * @emojis)
        @margin_L += 1
        @emojis -= 1
      end
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
end

(Animation.new(3, 9).first).each do |line|
  p line
end
