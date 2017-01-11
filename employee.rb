class Employee

  def initialize(input_first_name, input_last_name, input_salary)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
  end

  def first_name
    @first_name
  end

  def salary
    @salary
  end

  def salary=(input_salary)
    @salary = input_salary
  end

  def info
    "#{first_name} #{@last_name} makes #{@salary} a year"
  end


end


employee = Employee.new("Mark", "Richardson", 20000)
puts employee.info
employee.salary=(40000)
puts employee.salary