#!/usr/bin/env ruby
# We are using "/usr/bin/env" to look for the look through the user's PATH
# environment variable and return the first Ruby found as the Ruby
# to execute the script.

require 'optparse'
require_relative "calculator"

# Get args from command line
args = {}
OptionParser.new do |opt|
  opt.on('--num1 N1', 'Number 1 for operation') { |o| args[:n1] = o }
  opt.on('--num2 N2', 'Number 2 for operation') { |o| args[:n2] = o }
  opt.on('-o', '--operation OPT', 'Operation from calculator') { |o| args[:operation] = o }
end.parse!

# Abort unless all the args are given
abort "Missing input fields" unless (args[:operation] && args[:n1] && args[:n2])

# Calculator instance
calc = Calculator.new

# Casting
number1 = args[:n1].to_i
number2 = args[:n2].to_i

# Case statement
case args[:operation]
when '+' then result = calc.plus(number1, number2)
when '-' then result = calc.diff(number1, number2)
when 'x' then result = calc.prod(number1, number2)
when '/' then
  # Handle exception
  begin
    result = calc.div!(number1, number2)
  rescue ZeroDivisionError => _
    print "You can't divide by 0\n"
    exit 1
  end
else
  # Default case
  print 'Not valid operation. Valid operations:'
  print "\n \"+\" addition"
  print "\n \"x\" product"
  print "\n \"-\" difference"
  print "\n \"/\" division\n"
  exit 1
end

print "The result is #{result}\n"

