class Race_game
  def initialize(start_distance, wolf_to_pig_distance, pig_to_house_distance, game_duration)
    @start_distance = start_distance
    @wolf_to_pig_distance = wolf_to_pig_distance
    @pig_to_house_distance = pig_to_house_distance
    @game_duration = game_duration
    @time1 = Time.now
  end

  def wolf_runs(time2)
   #això seria una regla de tres
    @start_distance += 1
    @wolf_to_pig_distance -= 1
    if @wolf_to_pig_distance == 0
      wolf_wins
    end
  end

  def pig_runs
    @pig_to_house_distance -= 1
  end

  def wolf_wins
    p "wolf wins"
  end

  def distances_array
   [@start_distance, @wolf_to_pig_distance, @pig_to_house_distance]
  end
end
