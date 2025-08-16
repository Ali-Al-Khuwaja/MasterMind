# frozen_string_literal: true

# Character Class creates a player object with a name and nothing more than that , pass a name as argument .
class Character
  @player_name = ''

  def add_name
    puts 'What is your name ?'
    @player = gets.chomp
  end
end
