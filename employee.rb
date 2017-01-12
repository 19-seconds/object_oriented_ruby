class Employee

  attr_reader :first_name, :last_name, :salary
  attr_writer :salary

  def initialize(input_first_name, input_last_name, input_salary)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
  end

  def info
    "#{first_name} #{@last_name} makes #{@salary} a year"
  end

end


employee = Employee.new("Mark", "Richardson", 20000)
puts employee.info
puts employee.first_name
puts employee.last_name
employee.salary = 25000
puts employee.salary