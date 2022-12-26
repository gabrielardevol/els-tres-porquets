# require_relative 'hiding_game/hiding_game_controller'
require_relative 'text_display'

#Text.new.display('Once upon a time, pig family lives happily in middle of forest...', 0.07, 100, '', 1)
#sleep(1.5)

Text.new.display("Three pigs")
hash = {
  start_distance: 0,
  wolf_to_pig_distance: 20,
  pig_to_hiding_distance: 80,
  game_duration: 11.95
}

hgc = HidingGameController.new
number = 3
5.times do
  hgc.wolf_blows(number)
  number += 3
end
