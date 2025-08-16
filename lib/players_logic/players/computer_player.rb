# frozen_string_literal: true

require_relative 'code_makers/computer_code_maker'
require_relative 'character'

# A class for containing all computer's logic as a player .
# It contains character and computer_code_maker code
class ComputerPlayer < Character
  def make_secret_code
    computer_code_maker.make_secret_code
  end
end
