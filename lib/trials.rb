# frozen_string_literal: true

require_relative 'compare'
require_relative 'score'
require 'pry-byebug'

# This class is responsible for keeping track of trials and winning .
class Trials
  def initialize(guesser)
    @trial_number = 1
    @comparer = Compare.new(guesser)
    @score = Score.new
    @feedback = nil
  end

  def play_trial
    @feedback = @comparer.play
    update_score(@feedback)
  end

  def update_score(feedback)
    if feedback.all?('black')
      @score.increase_breaker_score(1)
      player_won('breaker')
    else
      @trial_number += 1
      if @trial_number > 10
        @score.increase_maker_score(1)
        player_won('maker')
      end
    end
  end

  def continue_trials?
    # binding.pry
    if @trial_number < 11
      true
    elsif @trial_number > 11
      player_won('maker')
      false
    end
  end

  def player_won(who)
    puts 'Round ended.'
    @score.show_score(who)
    puts "the code #{who} has won"
    exit(0)
  end
end
