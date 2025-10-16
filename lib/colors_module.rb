# frozen_string_literal: true

# ColorsModule is responsible for storing a hash with different colors with false booleans by default.
# The purpose of the booleans is to track the status, if it's true , then it was used .
module ColorsModule
  # A class variable, four colors only (for now), you sure ali ?? this os a module , check the duck
  COLORS_HASH = { red: false, yellow: false, blue: false, green: false } # rubocop:disable Style/MutableConstant
  def self.print_colors
    puts ColorsModule::COLORS_HASH.keys
  end
end
