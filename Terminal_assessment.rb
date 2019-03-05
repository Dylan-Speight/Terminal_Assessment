# A class for employers ie. cafe = Employer.new(position)
# A class for employees ie. me = Employee.new(pay-rate, name)
# produces a table that includes, hourly rate, age and name of employee, hours per week limit, hours available, total pay at the end of the week, employment type, etc.
# Preferably using hashes instead of arrays
# If it is possible to have to files communicating simultaneously like a message service?
# The employee class should have methods to access, total money earned, pay for the week, pay per hour, possibly pay with and without tax deducted?, request hours, see schedule
# The employer class should have a method to call on the timetable schedule as it stands and have complimentary methods to edit and manipulate it.
class Employer
    attr_accessor :name, :position, :age, :pay_rate, :hours_per_week_limit, :employment_type
    def initialize(name, position, age,  pay_rate, hours_per_week_limit, employment_type)
        @name = name
        @position = position
        @age = age
        @pay_rate = "%.2f" % pay_rate
        @hours_per_week_limit = hours_per_week_limit
        @employment_type = employment_type
    end

# class Employee < Employer
#     def initialize(name, position, age, pay_rate, hours_per_week_limit, employment_type)
#         super(name, position, age, pay_rate, hours_per_week_limit, employment_type)
    # end
    def about 
        puts "#{@name} is a #{@employment_type} #{@position}." 
        puts "They are #{@age}"
        puts "They are currently paid $#{@pay_rate} an hour."
        puts "They can work for a maximum of #{@hours_per_week_limit} hours a week."
    end
end

# employee_james = Employee.new("James", "Barista", "Casual", 16.00, 25)
# employee_james.about
loop do
puts "Welcome to the terminal roster app"
puts "What is your new employees name?"
name = gets.chomp.capitalize
puts "What is their position?"
position = gets.chomp.capitalize
puts "Age"
age = gets.chomp.to_i
puts "How much ya paying them?"
pay_rate = "%.2f" % gets.chomp.to_i
puts "Employment type? eg. Casual, Part time, Full time"
employment_type = gets.chomp.capitalize
puts "What are their maximum hours per week?"
hours_per_week_limit = gets.chomp.to_i
new_employee = Employer.new(name, position, age, pay_rate, hours_per_week_limit, employment_type)
new_employee.about
break
end



