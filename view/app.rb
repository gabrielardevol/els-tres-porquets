require_relative 'game_controller'
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


p "0"
GameView.new.bricks(0)
sleep(0.2)
p "1"
GameView.new.bricks(1)
sleep(0.2)
p "2"
GameView.new.bricks(2)
sleep(0.2)
p "3"
GameView.new.bricks(3)
sleep(0.2)
p "4"
GameView.new.bricks(4)
sleep(0.2)
p "5"
GameView.new.bricks(5)
sleep(0.2)
p "6"
GameView.new.bricks(6)
sleep(0.2)
p "7"
GameView.new.bricks(7)
sleep(0.2)
p "8"
GameView.new.bricks(8)
sleep(0.2)
p "9"
GameView.new.bricks(9)
sleep(0.2)
p "10"
GameView.new.bricks(10)
sleep(0.2)
p "11"
GameView.new.bricks(11)
sleep(0.2)
p "12"
GameView.new.bricks(12)
sleep(0.2)
p "13"
GameView.new.bricks(13)
sleep(0.2)
p "14"
GameView.new.bricks(14)
sleep(0.2)
p "15"
GameView.new.bricks(15)
sleep(0.2)
p "16"
GameView.new.bricks(16)
sleep(0.2)
p "17"
GameView.new.bricks(17)
sleep(0.2)
p "18"
GameView.new.bricks(18)
sleep(0.2)
p "19"
GameView.new.bricks(19)
sleep(0.2)
p "20"
GameView.new.bricks(20)
sleep(0.2)
p "21"
GameView.new.bricks(21)
sleep(0.2)
p "22"
GameView.new.bricks(22)
p "23"
GameView.new.bricks(23)
sleep(0.2)


GameController.new(hash)
