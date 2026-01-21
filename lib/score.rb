# frozen_string_literal: true

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
  end

  def increase_breaker_score(amount)
    @code_breaker_score += amount
  end
end
