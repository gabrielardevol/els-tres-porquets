require_relative "game" #race game

start_distance = 0
wolf_to_pig_distance = 10
pig_to_house_distance = 90
race = Race_game.new(start_distance, wolf_to_pig_distance, pig_to_house_distance)
race.display

time = Time.now
time2 = nil
until (time2.to_f - time.to_f) >= 15 do
  gets.chomp
  race.wolf_runs
  race.display
  time2 = Time.now
end
