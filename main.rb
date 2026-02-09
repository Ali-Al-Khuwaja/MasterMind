# frozen_string_literal: true

require_relative 'lib/game'

# The main class, it works as the coordinator
class Main
  def initialize
    @game = Game.new
    start_menu
  end

  def start_menu
    type_of_menu = 'start'
    puts 'Select an option by number...'
    sleep 0.4
    puts '1. Start game'
    puts '2. Stop game'
    answer = gets.chomp.to_i
    validate(answer, type_of_menu)
  end

  def start_menu_actions(answer)
    if answer == 1
      roles_menu
    elsif answer == 2
      puts 'Stopping game'
      stop_game
    end
  end

  def stop_game
    exit(0)
  end

  def roles_menu
    type_of_menu = 'roles'
    puts 'Choose the type of your opponent for your game'
    sleep 0.4
    puts '1. Human vs Human'
    puts '2. Human vs Computer'
    answer = gets.chomp.to_i
    validate(answer, type_of_menu)
  end

  def roles_menu_actions(answer)
    if answer == 1
      @game.human_vs_human
    elsif answer == 2
      @game.human_vs_computer
    end
  end

  def difficulty_menu
    type_of_menu = 'difficulty'
    puts 'Choose the difficulty of your game'
    sleep 0.4
    puts '1. Easy mode'
    puts '2. Hard mode'
    answer = gets.chomp.to_i
    validate(answer, type_of_menu)
  end

  def difficulty_menu_actions(answer)
    if answer == 1
      easy_mode
    elsif answer == 2
      hard_mode
    end
  end

  def validate(answer, type_of_menu)
    until answer.between?(1, 2)
      puts 'Enter a valid answer, pick 1 or 2 from the shown options' unless answer.between?(1, 2)
      answer = gets.chomp.to_i
    end
    case type_of_menu
    when 'start'
      start_menu_actions(answer)
    when 'roles'
      roles_menu_actions(answer)
    when 'difficulty'
      difficulty_menu_actions(answer)
    end
  end
end

test = Main.new
