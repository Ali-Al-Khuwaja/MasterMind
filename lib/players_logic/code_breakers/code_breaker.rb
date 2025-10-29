# frozen_string_literal: true

require_relative '../character'
require_relative '../../colors_module'
require 'pry-byebug'

# This is a class responsible for managing the code breaker role
class CodeBreaker < Character
  include ColorsModule

  def initialize(name = nil)
    super
    @index_is_used = Array.new(4, false)
    @guess_hash = {}
  end

  def check_index(index)
    # binding.pry
    if @index_is_used[index]
      puts "Try another index, you have used this index: #{index} before "
      ask_for_index
    elsif !index.between?(0, 3)
      puts "Please pick an index from 0 to 3 ,You picked #{index}"
      ask_for_index
    elsif !@index_is_used[index] && index.between?(0, 3)
      @index_is_used[index] = true
      index
    end
  end

  def ask_for_index
    # binding.pry
    puts 'pick an index from 0 to 3'
    index = gets.chomp.to_i
    check_index(index)
  end

  def ask_for_color(round)
    # binding.pry
    puts "Pick the #{round + 1} random color from the list below "
    puts ColorsModule.print_colors
    color = gets.chomp.to_sym
    validate_color(color, round)
  end

  def validate_color(color, round)
    # binding.pry
    if ColorsModule::COLORS_HASH.key?(color) && !@guess_hash.include?(color)
      color
    elsif !ColorsModule::COLORS_HASH.key?(color)
      puts "This color #{color} , is not a color bro"
      ask_for_color(round)
    elsif @guess_hash.include?(color)
      puts "You have used this color:#{color} before !"
      ask_for_color(round)
    end
  end

  def guess_code
    4.times do |round|
      color = ask_for_color(round)
      index = ask_for_index
      @guess_hash.store(color, index)
    end
    @guess_hash
  end
end
