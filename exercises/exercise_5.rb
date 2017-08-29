require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@store_revenue = Store.sum('annual_revenue')
puts @store_revenue
@store_average = Store.average('annual_revenue')
puts @store_average
@mega_store = Store.where('annual_revenue > 1000000').count()
puts @mega_store