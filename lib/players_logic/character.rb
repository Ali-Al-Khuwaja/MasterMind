# frozen_string_literal: true

# Character Class creates a character object with a name and nothing more than that , pass a name as argument .
class Character
  attr_reader :name

  def initialize(name = nil)
    # if it was not provided ,ask for it .
    if name.nil? || name.strip.empty?
      puts 'What is your name ?'
      @name = gets.chomp
    else
      @name = name
    end
    raise ArgumentError 'name required' if @name.nil? || @name.strip.empty?
  end
end
