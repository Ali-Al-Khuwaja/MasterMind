# frozen_string_literal: true

require_relative 'compare'
require_relative 'score'
require 'pry-byebug'

# This class is responsible for keeping track of trials.
class Trials
  def initialize
    @trail_number = 1
    @comparer = Compare.new
    @score = Score.new
    @feedback = nil
  end

  def play_trial
    @feedback = @comparer.play
  end

  def update
    if feedback.any?('white') && @trail_number < 11
      @score.increase_maker_score(1)
      @trail_number += 1
    elsif @trail_number == 10
      @score.increase_maker_score(11)
    else
      @score.increase_breaker_score(5)
    end
  end
end
