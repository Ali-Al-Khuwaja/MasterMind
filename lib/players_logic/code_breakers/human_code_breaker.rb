# frozen_string_literal: true

require_relative '../character'
require_relative '../../colors_module'
require 'pry-byebug'

# This is a class responsible for managing the code breaker role
class HumanCodeBreaker < Character
  include ColorsModule

  def initialize(name = nil)
    super
    @index_is_used = Array.new(4, false)
    @guess_array = []
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
    puts "Pick the #{round + 1} color from the list below "
    puts ColorsModule.print_colors
    color = gets.chomp.to_s
    validate_color(color, round)
  end

  def validate_color(color, round)
    # binding.pry
    if ColorsModule::COLORS_ARRAY.include?(color) && !@guess_array.include?(color)
      color
    elsif !ColorsModule::COLORS_ARRAY.include?(color)
      puts "This color #{color} , is not a color bro"
      ask_for_color(round)
    elsif @guess_array.include?(color)
      puts "You have used this color:#{color} before !"
      ask_for_color(round)
    end
  end

  def guess_code
    4.times do |round|
      color = ask_for_color(round)
      index = ask_for_index
      @guess_array[index] = color
    end
    @guess_array
  end

  def reset_data
    @index_is_used = Array.new(4, false)
    @guess_array = []
  end
end
