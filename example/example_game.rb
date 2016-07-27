root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/tic_tac_toe.rb"

puts "Welcome to Tic Tac Toe"
puts "Player 1, state your name. You'll be 'X'."
p1_name = gets.chomp
player1 = TicTacToe::Player.new({color: "X", name: p1_name})
puts "Player 2, state your name. You'll be 'O'."
p2_name = gets.chomp
player2 = TicTacToe::Player.new({color: "O", name: p2_name})
players = [player1, player2]
TicTacToe::Game.new(players).play