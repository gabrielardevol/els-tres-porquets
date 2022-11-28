require_relative "game_controller.rb"
require_relative "text_display_view.rb"


Text.new.display("Once upon a time there were a family of pigs...", 0.07, 100, "", 1)
sleep(1.5)
Text.new.display("🐷 🐷 🐷 🐷", 0.3, 100, "Once upon a time there were a family of pigs...")

gets.chomp
Text.new.display("They were happy... Until mother pig ran out of money", 0.07, 100)

gets.chomp
GameController.new
