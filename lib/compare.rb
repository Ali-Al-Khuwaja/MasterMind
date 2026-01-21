# frozen_string_literal: true

require_relative 'players_logic/code_makers/computer_code_maker'
require_relative 'players_logic/code_breakers/code_breaker'
require 'pry-byebug'

# This class is responsible for comparing CodeBreaker's guess and CodeMaker's secret code.
#
# it will give feedback on each trail.
class Compare
  def initialize
    @code_breaker = CodeBreaker.new
    @code_maker = ComputerCodeMaker.new
  end

  def play
    secret_code = @code_maker.make_secret_code
    player_guess = @code_breaker.guess_code
    compare(secret_code, player_guess)
  end

  # Compares the guessed code with the secret code and returns feedback balls.
  #
  # Rules:
  # - Black: correct color in correct position
  # - White: correct color in wrong position
  # - Nothing: color not present
  #
  # This logic follows the Mastermind rules.
  # Detailed explanation:
  # docs/code/comparing-logic.md
  def compare(secret_code, player_guess) # rubocop:disable Metrics/MethodLength
    # binding.pry <-------------------------------------------------
    # TODO : check if this works with HARD MODE
    feedback = []
    p player_guess
    guess_array = player_guess.keys

    guess_array.each_index do |index|
      if guess_array[index] == secret_code[index]
        feedback.push('black')
      elsif guess_array[index] != secret_code[index]
        if secret_code.any?(guess_array[index])
          feedback.push('white')
        else
          feedback.push('empty')
        end
      end
    end
    p feedback
    feedback
  end
end

# DEBUG : Uncomment test to execute this script
# test = Compare.new
# test.play
# output example:
# player's guess and feedback:
# {red: 0, green: 1, blue: 2, yellow: 3}
# ["white", "white", "black", "white"]
