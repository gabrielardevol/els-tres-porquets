p time1 = Time.now
# sleep(5)
p time2 = nil
p timelapse = 15
p count = 0
p start_distance = 0
p mid_distance = 49
p final_distance_init = 100
p "*" * 15
p wolf_run = timelapse / (mid_distance + final_distance_init).to_f

until time2.to_f - time1.to_f >= timelapse do
  time2 = Time.now
  # puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (mid_distance + count).to_i + "🐷" + "🌲" * final_distance_init + "🏠"
  puts "press any key to run to the house!"
  gets.chomp ? count += 1 : nil
  p now = time2.to_f - time1.to_f
  p wolf_run
  p (now / wolf_run).to_i


  #if now >= wolf_run.to_f do
  #  puts "WOLF"
  #  wolf_run += wolf_run
  #end
  p start_distance = (now / wolf_run)
  p mid_distance -= mid_distance - (now / wolf_run)
  p final_distance = final_distance_init - (now / wolf_run)
end
