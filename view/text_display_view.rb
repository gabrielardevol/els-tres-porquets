class Text
  def display(array, time, top_spacing, upper_string = "", bottom_spacing = 0)
    index = 0
    until index == array.size do
      top_spacing.times do
        puts ""
      end
      puts upper_string
      puts array[0..index]
      bottom_spacing.times do
        puts ""
      end
      index += 1
      sleep(time)
    end
  end
end
