# frozen_string_literal: true

# ColorsModule is responsible for storing a hash with different colors and accompanied with false booleans.
# The purpose of the booleans is to track the status
module ColorsModule
  # A class variable, four colors only (for now)
  COLORS_HASH = { red: false, yellow: false, blue: false, green: false } # rubocop:disable Style/MutableConstant
  def self.print_colors
    puts ColorsModule::COLORS_HASH.keys
  end
end
