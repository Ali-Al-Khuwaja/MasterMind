# frozen_string_literal: true

require_relative 'lib/game'
require 'pry-byebug'

# The main class, it works as the coordinator
class Main
  def initialize
    @game = Game.new
    @role = nil
    start_menu
  end

  def start_menu
    type_of_menu = 'start'
    puts 'Select an option by number...'
    sleep 0.1
    puts '1. Start game'
    puts '2. Stop game'
    answer = gets.chomp.to_i
    validate(answer, type_of_menu)
  end

  def start_menu_actions(answer)
    if answer == 1
      puts 'Starting game:'
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
    puts 'Do you want to be the guesser or the maker?'
    sleep 0.1
    puts '1. I want to be guesser of secret code'
    puts '2. I want to be Maker of secret code'
    role = gets.chomp.to_i
    validate(role, type_of_menu)
  end

  def roles_menu_actions(role)
    if role == 1
      @role = 'guesser' # Human is code breaker, computer is code maker
      @game.human_guessing
    elsif role == 2
      @role = 'maker' # Human is code maker, computer is code maker
      @game.human_making
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
    end
  end
end
test = Main.new
