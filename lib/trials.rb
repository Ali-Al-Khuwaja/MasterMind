# frozen_string_literal: true

require_relative 'compare'
require_relative 'score'
require 'pry-byebug'

# This class is responsible for keeping track of trials.
class Trials
  def initialize
    @trial_number = 1
    @comparer = Compare.new
    @score = Score.new
    @feedback = nil
  end

  def play_trial
    @feedback = @comparer.play
    update_score(@feedback)
  end

  def update_score(feedback)
    if feedback.any?('white') && @trial_number < 11
      @score.increase_maker_score(1)
      @trial_number += 1
    elsif @trial_number == 10 # consumed all trials
      @score.increase_maker_score(1)
    else # all black pins
      @score.increase_breaker_score(5)
    end
  end

  def continue_trials?
    # binding.pry
    if @trial_number < 11
      true
    elsif @trial_number > 11
      false
    end
  end
end
