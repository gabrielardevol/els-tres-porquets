
class Game
  def initialize(hash)
    #running game
    @start_distance = hash[:start_distance].to_i
    @wolf_to_pig_distance = hash[:wolf_to_pig_distance].to_i
    @pig_to_house_distance = hash[:pig_to_house_distance].to_i
    @total_distance = @start_distance + @wolf_to_pig_distance + @pig_to_house_distance
    @game_duration = hash[:game_duration].to_f
    @time1 = Time.now

    #building game
    @bricks = 23
    @blows = 0
  end

  #running game
  def wolf_runs(time2) # there is a bug
    @start_distance = (@total_distance / @game_duration) * (time2 - @time1)
    @wolf_to_pig_distance = @total_distance - (@start_distance + @pig_to_house_distance)
  end

  def pig_runs
    @pig_to_house_distance -= 1
    @wolf_to_pig_distance += 1
  end

  def distances_array
    [@start_distance, @wolf_to_pig_distance, @pig_to_house_distance]
  end

  # building game
  def pig_builds
    time1 = Time.now
    time2 = nil
    count = 0
    until time2.to_i - time1.to_i >= 3
      gets.chomp
      count += 1
    end
    @bricks += (count / 3)
    puts @bricks
  end

  def wolf_blows
    @blows += 1
  end
end
