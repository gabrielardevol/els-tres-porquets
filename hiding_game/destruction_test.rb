require_relative "wolf_animation"
require_relative "house_animation"

house = House.new
blown = 3
margin = 5
n = 0
array = []
(margin + blown + 1).times do
  array << "#{Animation.new(blown, margin).arrays_array(n)}"
  n += 1
end

frame = 0

(margin + 1).times do
p "  "*margin + house.row6(23)
p "  "*margin + house.row5
p "  "*margin + house.row4
p "  "*margin + house.row3
p "  "*margin + house.row2
p array[frame] + house.row1
frame += 1
end

(blown).times do
  p "  "*margin + house.row6
  p "  "*margin + house.row5
  p "  "*margin + house.row4
  p "  "*margin + house.row3
  p "  "*margin + house.row2
  p array[frame] + house.row1
  frame += 1
  end
