require_relative "game" #race game
require_relative "game_view"

start_distance = 0
wolf_to_pig_distance = 20
pig_to_house_distance = 80
time_duration = 11.8

race = Race_game.new(start_distance, wolf_to_pig_distance, pig_to_house_distance, time_duration)
view = GameView.new


until race.distances_array[2] == 0 || race.distances_array[1] <= 0 do
  gets.chomp
  race.wolf_runs(Time.now)
  race.pig_runs
  puts view.display(race.distances_array)
  # time2 = Time.now
end

if race.distances_array[2] == -1
  puts "pig got to house"
elsif race.distances_array[1] <= 0
  puts "pig got eaten"
end
