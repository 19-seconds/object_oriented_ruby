class Employee

  attr_reader :first_name, :last_name, :salary
  attr_writer :salary

  def initialize(employee_hash)
    @first_name = employee_hash[:first_name]
    @last_name = employee_hash[:last_name]
    @salary = employee_hash[:salary]
  end

  def info
    "#{@first_name} #{@last_name} makes #{@salary} a year"
  end

end


mark = Employee.new({first_name: "Mark", last_name: "Richardson", salary: 20000})
puts mark.info
# puts employee.first_name
# puts employee.last_name
# employee.salary = 25000
# puts employee.salary