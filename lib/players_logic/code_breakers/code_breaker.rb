# frozen_string_literal: true

require_relative '../character'
require_relative '../../colors_module'
require 'pry-byebug'

# This is a class responsible for managing the code breaker role
class CodeBreaker
  include ColorsModule

  def initialize
    @player = Character.new
    @player.add_name
    # Make an array called 'indicator' that stores 4 elements inside it, each element will
    # be a boolean with a false value .
    # When the breaker picks and index it'll signal to the indicator array to turn on
    # the corresponding index in the 'indicator' array to act like a form of verification if the
    # index has been used before
    @index_is_used = Array.new(4, false)
    @guess_hash = {} # empty for now
  end

  def check_index(round, index)
    p round, index
    binding.pry
    if @index_is_used[round] == true || !index.between?(1, 4) || @guess_hash.value?(index)
      puts 'Try another index, you have used this index before or this index is not between 1 to 4'
      index = gets.chomp.to_i
      check_index(round, index)
    elsif @index_is_used[round] == false && index.between?(1, 4)
      @index_is_used[round] = true
      # @guess_hash.store(color, index)
      { index: true }.keys.first
    end
  end

  def guess_code
    4.times do |round|
      # a boolean for checking if the color is already present in guess_hash
      puts "Enter the #{round + 1} random color from the list below"
      puts ColorsModule.print_colors
      color = gets.chomp.to_sym
      color_is_used = @guess_hash.key?(color) # Check if the color has been chosen before
      puts 'pick an index please'
      index = gets.chomp.to_i
      is_valid = check_index(round, index)
      until ColorsModule::COLORS_HASH.key?(color) && color_is_used == false && is_valid
        # p ColorsModule::COLORS_HASH.key?(color)
        # p color && color_is_used
        puts "Wrong ! The color #{color} is used or you haven't picked a color that is from the list, pick another please."
        puts ColorsModule.print_colors
        color = gets.chomp.to_sym
        color_is_used = @guess_hash.key?(color)
        binding.pry
        is_valid ||= check_index(round, index)
      end
      @guess_hash.store(color, index)
      p @guess_hash
    end
  end
end
# This object will set the name of player and the guessed code
test = CodeBreaker.new
test.guess_code
