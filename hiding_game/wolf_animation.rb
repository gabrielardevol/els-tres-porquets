
class Animation
  def initialize(blown = 3, margin = 5)
    @margin = margin
    @blown = blown
    arrays_array
  end

  # this method returns to the view an array of arrays
  # with the blowing emoji
  def arrays_array(frame = 5)
    blank = "  "
    blow = "💨"
    left_margin = 0
    super_array = []

    (@blown + @margin + 1).times do
      array = []

      left_margin.times do
        array << "  "
      end

      @blown.times do
        array << "💨"
      end

      (@margin+@blown).times do
        array << "  "
      end

      left_margin += 1

      super_array << array[@blown..(@margin + @blown - 1)].join
    end

    super_array[frame]
  end
