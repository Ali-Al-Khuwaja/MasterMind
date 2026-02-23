# frozen_string_literal: true

require 'pry-byebug'
# This class is responsible for adding score points to a winning player.
#
# #add_point method
#
# #store points
class Score
  def initialize
    @code_breaker_score = 0
    @code_maker_score = 0
  end

  def increase_maker_score(amount)
    @code_maker_score += amount
    show_score('maker')
  end

  def increase_breaker_score(amount)
    @code_breaker_score += amount
    show_score('breaker')
  end

  def show_score(who)
    binding.pry
    if who == 'maker'
      puts "code_maker's score :#{@code_maker_score}"
    elsif who == 'breaker'
      puts "code_breaker's score:#{@code_breaker_score}"
    end
  end
end
