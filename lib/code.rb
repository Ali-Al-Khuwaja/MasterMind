require_relative 'code_maker/computer_code_maker'
require_relative 'code_breaker'
require 'pry-byebug'

class Code
  def initialize
    binding.pry
    @code_breaker = CodeBreaker.new
    @code_maker = ComputerCodeMaker.new
  end

  def play
    code = @code_maker.make_secret_code
    player_guess = @code_breaker.guess_code
    compare(code, player_guess)
  end

  def compare(code, guess)
    p code
    p guess
  end
end

test = Code.new
test.play
