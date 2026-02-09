require_relative 'trials'
require 'pry-byebug'

# This object is responsible for switching between difficulties and player types
class Game
  def initialize
    @trials = Trials.new
  end

  def easy_mode
    puts "This method hasn't been made yet"
  end

  def hard_mode
    puts "This method hasn't been made yet"
  end

  def human_vs_human
    puts "This method hasn't been made yet"
  end

  def human_vs_computer
    puts "This method hasn't been made yet"
  end
end

