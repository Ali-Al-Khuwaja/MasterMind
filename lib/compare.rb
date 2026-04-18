# frozen_string_literal: true

require_relative 'players_logic/code_makers/computer_code_maker'
require_relative 'players_logic/code_makers/human_code_maker'
require_relative 'players_logic/code_breakers/human_code_breaker'
require_relative 'players_logic/code_breakers/computer_code_breaker'
require 'pry-byebug'

# This class is responsible for comparing CodeBreaker's guess and CodeMaker's secret code.
#
# it will give feedback on each trail.
class Compare
  def initialize(code_guesser)
    @guesser = code_guesser # also used in switch_roles and compare
    if @guesser == 'computer_guessing' # human making code (code maker)
      @code_maker = HumanCodeMaker.new
      @code_breaker = ComputerCodeBreaker.new
      @secret_code = @code_maker.make_secret_code
    elsif @guesser == 'human_guessing' # human guessing code (code breaker)
      @code_maker = ComputerCodeMaker.new
      @code_breaker = HumanCodeBreaker.new
      @secret_code = @code_maker.make_secret_code
    end
  end

  def play
    @code_breaker.reset_data if @code_breaker.respond_to?(:reset_data)
    player_guess = @code_breaker.guess_code
    compare(@secret_code, player_guess, @guesser)
  end

  # Compares the guessed code with the secret code and returns feedback balls.
  #
  # Rules:
  # - Black: correct color in correct position
  # - White: correct color in wrong position
  # - Nothing: color not present
  #
  # This method is called in #play
  def compare(secret_code, player_guess, guesser) # rubocop:disable Metrics/AbcSize,Metrics/MethodLength,Metrics/PerceivedComplexity
    # This works when the human is the code guesser
    feedback = []
    guess_array = player_guess

    # Feedback is auto generated so that you don't cheat, human.
    guess_array.each_index do |index|
      # binding.pry
      if guess_array[index] == secret_code[index]
        feedback.push('black')
      elsif guess_array[index] != secret_code[index]
        if secret_code.include?(guess_array[index])
          feedback.push('white')
        else
          feedback.push('empty')
        end
      end
    end

    if guesser == 'computer_guessing'
      # binding.pry
      puts ''
      puts 'Comparison results: '
      puts "Your secret code: #{secret_code}"
      puts "Code breaker's choices are : #{guess_array}"
      puts "Feedback from Code maker is auto generated to be fair: #{feedback}"
    elsif guesser == 'human_guessing'
      # binding.pry
      puts ''
      puts 'Comparison results:'
      puts "Code breaker's(You) choices are : #{guess_array}"
      puts "Feedback from Code maker is auto generated to be fair: #{feedback}"
    end
    feedback # returned to the caller after comparing and stuff
  end
end
