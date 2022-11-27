time1 = Time.now
# sleep(5)
time2 = nil
timelapse = 15
count = 0
start_distance = 0
mid_distance = 49
final_distance = 100
wolf_run = timelapse.to_f / (mid_distance.to_f + final_distance.to_f)

p wolf_run


until time2.to_f - time1.to_f >= timelapse do
  time2 = Time.now
  puts ("🌲" * start_distance) + "🐺" + "🌲" * (mid_distance + count) + "🐷" + "🌲" * final_distance + "🏠"
  puts "press any key to run to the house!"
  gets.chomp ? count += 1 : nil
  p now = time2.to_f - time1.to_f
  p wolf_run

  if 2 + 2 == 4
    p "wolf"
  else
    nil
  end

  #if now >= wolf_run.to_f do
  #  puts "WOLF"
  #  wolf_run += wolf_run
  #end
  start_distance += 1
  mid_distance -= 1
  final_distance -= 1
end
