require_relative 'hiding_game/hiding_game_controller'
require_relative 'text_display_view'
require_relative 'image_repository'

image_repository = ImageRepository.new

#Text.new.display('Once upon a time, pig family lives happily in middle of forest...', 0.07, 100, '', 1)
#sleep(1.5)
#Text.new.display('🐷 🐷 🐷 🐷', 0.3, 100, 'Once upon a time, pig family lives happily in middle of forest...')
#gets.chomp
#Text.new.display('Problem is... Mother pig ran out of money', 0.07, 100)

#image_repository.image1

#gets.chomp

hash = {
  start_distance: 0,
  wolf_to_pig_distance: 20,
  pig_to_hiding_distance: 80,
  game_duration: 11.95
}

# hidingGameView.new.display_hiding(1)
# hidingGameView.new.display_hiding(2)
# hidingGameView.new.display_hiding(3)
# hidingGameView.new.display_hiding(4)
# hidingGameView.new.display_hiding(5)
# hidingGameView.new.display_hiding(6)
# hidingGameView.new.display_hiding(7)
# hidingGameView.new.display_hiding(8)
# hidingGameView.new.display_hiding(9)
# hidingGameView.new.display_hiding(10)
# hidingGameView.new.display_hiding(11)
# hidingGameView.new.display_hiding(12)
# hidingGameView.new.display_hiding(13)
# hidingGameView.new.display_hiding(14)
# hidingGameView.new.display_hiding(15)
# hidingGameView.new.display_hiding(16)

hgc = HidingGameController.new
number = 3
5.times do
  hgc.wolf_blows(number)
  number += 3
end
#hgc.pigs_build
