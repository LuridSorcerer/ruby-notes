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
