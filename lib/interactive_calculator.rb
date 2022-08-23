class InteractiveCalculator
  def initialize(io = Kernel)
    @io = io
  end

  def run
    @io.puts "Hello. I will subtract two numbers."
    @io.puts "Please enter a number"
    first_number = @io.gets.chomp
    @io.puts "Please enter another number"
    second_number = @io.gets.chomp
    sum = first_number.to_i - second_number.to_i
    @io.puts "Here is your result:"
    @io.puts "#{first_number} - #{second_number} = #{sum}"
  end
end


interactive_calculator = InteractiveCalculator.new()
interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1