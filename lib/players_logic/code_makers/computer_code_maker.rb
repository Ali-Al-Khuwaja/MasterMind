# frozen_string_literal: true

require_relative '../../colors_module'

# This class is responsible for making the computer generate a secret code .
class ComputerCodeMaker
  include ColorsModule

  def make_secret_code
    ColorsModule::COLORS_ARRAY.sample(4)
  end
end
