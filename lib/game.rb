require_relative 'trials'
require 'pry-byebug'

# This object is responsible for switching between difficulties and player types
class Game
  def initialize
    @trials = Trials.new
  end

  def start_game
    puts @trials.play_trial
  end

  def easy_mode(roles)
    if roles == 'human_vs_human'
      human_vs_human
    elsif roles == 'human_vs_computer'
      human_vs_computer
    end
    # start_game
  end

  def hard_mode(role)
    puts 'Hard mode has not been made yet'
    # start_game
  end

  def human_vs_human
    puts "human vs human method hasn't been made yet"
  end

  def human_vs_computer
    puts 'There is currently one game mode in the game and it is this one, so I will start normally'
    start_game
  end
end
