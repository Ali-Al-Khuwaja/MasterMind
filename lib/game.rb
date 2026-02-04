require_relative 'trials'
require 'pry-byebug'

# This object is responsible for switching between difficulties and player types
class Game
  def initialize
    @trials = Trials.new
  end

  def easy_mode
    # easy mode logic ...
  end

  def hard_mode
    # hard mode logic ...
  end

  def human_vs_human
    # method logic ...
  end

  def human_vs_computer
    # method logic ...
  end
end

