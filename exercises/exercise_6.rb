require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Hannah", last_name: "GoldenRetreiever", hourly_rate: 40)
@store4.employees.create(first_name: "Edmond", last_name: "Corgi", hourly_rate: 20)
@store5.employees.create(first_name: "Simon", last_name: "Pomsky", hourly_rate: 200)
@store6.employees.create(first_name: "Wing", last_name: "Samoyed", hourly_rate:100)
@store3.employees.create(first_name: "Courtney", last_name: "Poodle", hourly_rate:40)

pp Employee.all
