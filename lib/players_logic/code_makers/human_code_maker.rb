# frozen_string_literal: true

require_relative '../character'
require_relative '../../colors_module'
require_relative '../code_breakers/human_code_breaker'
require 'pry-byebug'

# This class is responsible for making a secret code by a human
class HumanCodeMaker < HumanCodeBreaker
  include ColorsModule

  attr_reader :secret_code

  def initialize # rubocop:disable Lint/MissingSuper
    # Making the code is similar to breaking it
    @code_breaker = HumanCodeBreaker.new
  end

  def make_secret_code
    @secret_code = @code_breaker.guess_code
  end
end
