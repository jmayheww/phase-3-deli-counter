# Write your code here.
require 'pry'

katz_deli = []

def line(deli_arr)
  binding.pry
  if deli_arr.empty?
    puts 'The line is currently empty.'
  else
    status = ['The line is currently:']
    deli_arr.each_with_index do |name, index|
      status.push("#{index + 1}. #{name}")
    end
    puts status.join(' ')
  end
end

line(katz_deli)

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
  if katz_deli.empty?
    puts 'There is nobody waiting to be served!'
  else
    puts "Currently serving #{katz_deli[0]}."
  end
  katz_deli.shift
end
