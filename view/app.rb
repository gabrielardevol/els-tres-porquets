require_relative "game_controller.rb"
require_relative "text_display_view.rb"
require_relative "image_repository.rb"

image_repository = ImageRepository.new

Text.new.display("Once upon a time, pig family lives happily in middle of forest...", 0.07, 100, "", 1)
sleep(1.5)
Text.new.display("🐷 🐷 🐷 🐷", 0.3, 100, "Once upon a time, pig family lives happily in middle of forest...")
gets.chomp
Text.new.display("Problem is... Mother pig ran out of money", 0.07, 100)

image_repository.image1

gets.chomp
GameController.new
