# frozen_string_literal: true

require_relative '../../colors_module'

# This class is responsible for making the computer generate a secret code .
class ComputerCodeMaker
  include ColorsModule

  def fetch_colors
    random_color = ColorsModule::COLORS_HASH.keys.sample
    if ColorsModule::COLORS_HASH[random_color] == false
      ColorsModule::COLORS_HASH[random_color] = true
      random_color
    else
      fetch_colors
    end
  end

  def make_secret_code
    Array.new(4) { fetch_colors }
  end
end
