require_relative "wolf_animation"
require_relative "house_animation"

house = House.new
blown = 3
margin = 4
n = 0
array = []
(margin + blown).times do
  array << "#{Animation.new(blown, margin).arrays_array(n)}"
  n += 1
end

frame = 0
p "  "*margin + house.row6
p "  "*margin + house.row5
p "  "*margin + house.row4
p "  "*margin + house.row3
p "  "*margin + house.row2

p array[frame]
p array[1]
p array[2]
