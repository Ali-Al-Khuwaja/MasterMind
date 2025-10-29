require_relative 'players_logic/code_makers/computer_code_maker'
require_relative 'players_logic/code_breakers/code_breaker'
require 'pry-byebug'

# This class is responsible for comparing CodeBreaker's guess and CodeMaker's secret code.
class Code
  def initialize
    binding.pry
    @code_breaker = CodeBreaker.new
    @code_maker = ComputerCodeMaker.new
  end

  def play
    binding.pry
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
