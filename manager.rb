require "./report_email.rb"

class Manager < Employee
  include ReportEmail

  def initialize(employee_hash)
    super
    @employees = employee_hash[:employees]
  end

  def print_subordinates
    index = 1
    @employees.each do |employee|
      puts "Employee: #{index}'s info: #{employee.info}"
      index += 1
    end
  end

  def give_all_raises
    @employees.each do |employee|
      employee.give_annual_raise
    end
  end

  def fire_all_employees
    @employees.each do |employee|
      employee.active = false
    end
  end
end

