time1 = Time.now
# sleep(5)
time2 = nil
timelapse = 15
count = 0
start_distance = 0
mid_distance = 49
final_distance = 100
wolf_run = timelapse.to_f / mid_distance.to_f + final_distance.to_f

until time2.to_f - time1.to_f >= timelapse do
  time2 = Time.now
  puts ("🌲" * start_distance) + "🐺" + "🌲" * (mid_distance + count) + "🐷" + "🌲" * final_distance + "🏠"
  puts "press any key to run to the house!"
  gets.chomp ? count += 1 : nil
  start_distance += 1
  mid_distance -= 1
  final_distance -= 1
end

# en setze segons pots clical cent vegades
# en disset segons arriba el llop a la casa
# si trigues més que el llop, et menja
