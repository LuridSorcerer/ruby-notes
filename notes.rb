#!/usr/bin/env ruby

# Notes

# Basically everything is an object, even primitives.

# variables
# Naming convention is snake case.
# They are not objects, but they refrence objects. 
sample_variable = 2

# scope indicators
# $global_variable
# @@class_variable
# @instance_variable
# local_variable

# constants
# start with capital letter 
# all caps by convention
# not actually contant, 
#   ruby throws a warning if they are changed, but allows the change
SAMPLE_CONST = "tomfoolery"
SAMPLE_CONST = "whoops, though this was a const"

# numbers
# + - * / work as expected
# integer divison truncates
# will convert to float if a float is involved
# ** = exponent
puts sample_variable ** 8

# integers
puts 8.class
puts 8.next
puts -8.abs
puts 8.to_f

# floats
sample_float = 0.6
puts sample_float.ceil
puts sample_float.floor
puts sample_float.round
puts (sample_float.to_i).class
puts sample_float.class

# strings
doublequote = "Hello"
singlequote = ' world'
puts doublequote + singlequote
doublequote << singlequote
puts doublequote
puts singlequote * 3
puts 1 * 5
puts "1" * 5
puts "1".to_i * 5
puts doublequote.reverse
puts doublequote.upcase
puts doublequote.length

# escaping and interpolation
puts "Escape the \" so it will be printed"
puts 'Same with \''
puts "These \tescapes only \nwork with double quotes"
puts "Same with string interpolation: #{doublequote.length}"

# arrays
# can store any type of object, do not have to be same type
my_array = [5, 4, 4, 34, 'abc', 'xyz']
puts my_array[2]
my_array[7] = 'bubble'
my_array << "append this"
my_array << ["add","sub","array"]
puts my_array[-1]
puts my_array[2,2]
puts my_array.length #also .size
puts my_array.reverse #add ! to assign back to original
# uniq : drops duplicates
# compact: drops nil values
# flatten: expand sub-array elements into their own elements
# include? : see if a value is present
# delete_at(int) : delete value at position
# delete(value) : delete item by value
# push : add item to end
# pop : remove item from end
# shift : remove item from front
# unshift: add item to front
# + : add elements from two arrays
# - : remove elements

# hashes
# key-value pairs, object-indexed
car = {
	'brand' => 'Pontiac',
	'model' => 'Grand Am',
	'color' => 'multi',
	'interior' => 'gray'
}
puts car['model']
puts car.keys 
puts car.to_a

# conditionals
# if, else, elsif, end
if sample_variable < 100
  puts "Under 100"
elsif sample_variable < 200
  puts "Between 100 and 200"
else 
  puts "200 or more"
end

# unless
# same as if !(boolean)
unless sample_variable.nil?
  puts sample_variable
end

# two styles of code blocks
# * Curly braces: preferred for single line, or returns data with no changes
5.times {|i| puts "Curly! " + i.to_s}
# * do-end format: multi-line blocks, perform actions, make changes
5.times do |i|
	puts "Blocky! " + i.to_s
end

# when iterating over hashes, two iterator variables can be used
stats = {body:3, mind:1, skill:2}
stats.each {|stat,value| puts "#{stat.capitalize}: #{value}"}

