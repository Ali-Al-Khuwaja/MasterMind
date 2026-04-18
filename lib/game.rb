require_relative 'trials'
require 'pry-byebug'

# This object is responsible for switching between difficulties and player types
class Game
  def initialize
    @trials = nil
  end

  def human_guessing
    # computer is the code maker, human is code breaker
    @trials = Trials.new('human_guessing')
    start_game
  end

  def human_making
    # human is the code maker, computer is code breaker
    @trials = Trials.new('computer_guessing')
    start_game
  end

  private

  def start_game
    @trials.play_trial until @trials.continue_trials? == false
  end
end
