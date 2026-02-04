# frozen_string_literal: true

# Character Class creates a character object with a name and nothing more than that , pass a name as argument .
class Character
  attr_reader :name

  def initialize(name = nil)
    @name = name
    loop do
      if name.nil? || name.strip.empty?
        puts 'What is your name ?'
        @name = gets.chomp
      end
      break if @name.is_a?(String) && !@name.strip.empty?

      puts 'Name required, Please enter a valid name.'
    end
  end
end
