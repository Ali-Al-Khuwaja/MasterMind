# frozen_string_literal: true

require_relative '../../colors_module'

# This class is responsible  for making computer break secret code
class ComputerCodeBreaker
  include ColorsModule

  attr_reader :name

  def initialize
    @name = 'Computer code breaker bot'
    @guess = nil
  end

  def guess_code
    ColorsModule::COLORS_ARRAY.sample(4)
  end
end
