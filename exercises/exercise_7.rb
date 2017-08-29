require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_inclusion_of :hourly_rate, in: 40..200
  validates_presence_of :store_id
end

class Store < ActiveRecord::Base
  validates_length_of :name, minimum: 3
  validates :annual_revenue,
            numericality: { only_interger: true,
              greater_than: 0}
        end



print "Gimmie a store name"

@store_name = gets.chomp

e = Store.create(name: @store_name, annual_revenue: nil, mens_apparel: nil, womens_apparel: nil)

# pp Store.all

if e.errors.any?
  puts e.errors.full_messages
else
  puts "you aite"
end
