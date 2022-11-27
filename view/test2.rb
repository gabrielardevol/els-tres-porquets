  time1 = Time.now

  start_distance = 0
  wolf_to_pig_distance = 10
  count = 0
  final_distance = 90
  total_distance = wolf_to_pig_distance + final_distance

# sleep(4)
  total_time = 15
  p per_second = (100.0 / total_time)

  p time_passed = (Time.now - time1)

  sleep(0.9)
  wolf_runs = per_second * time_passed

  p start_distance.to_i
  p "wolf runs #{wolf_runs}"
  p wolf_to_pig_distance.to_i

  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"
  #def wolf_run
    if wolf_runs <= wolf_to_pig_distance
      start_distance += wolf_runs
      wolf_to_pig_distance -= wolf_runs
    else
      wolf_to_pig_distance = 0
      start_distance = total_distance - final_distance
    end
  #end
  wolf_runs = per_second * time_passed

        p start_distance.to_i
        p "wolf runs #{wolf_runs}"
        p wolf_to_pig_distance.to_i


  puts ("🌲" * start_distance.to_i) + "🐺" + "🌲" * (wolf_to_pig_distance + count).to_i + "🐷" + "🌲" * final_distance + "🏠"
