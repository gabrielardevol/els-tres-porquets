require_relative 'game_controller'
require_relative 'house_game_controller'
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
  pig_to_house_distance: 80,
  game_duration: 11.95
}

# HouseGameView.new.display_house(1)
# HouseGameView.new.display_house(2)
# HouseGameView.new.display_house(3)
# HouseGameView.new.display_house(4)
# HouseGameView.new.display_house(5)
# HouseGameView.new.display_house(6)
# HouseGameView.new.display_house(7)
# HouseGameView.new.display_house(8)
# HouseGameView.new.display_house(9)
# HouseGameView.new.display_house(10)
# HouseGameView.new.display_house(11)
# HouseGameView.new.display_house(12)
# HouseGameView.new.display_house(13)
# HouseGameView.new.display_house(14)
# HouseGameView.new.display_house(15)
# HouseGameView.new.display_house(16)

hgc = HouseGameController.new
hgc.wolf_blows(23)
hgc.pigs_build
