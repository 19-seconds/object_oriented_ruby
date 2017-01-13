module ReportEmail

  def send_report
    puts "Sending Email......"
    puts "Email sent!"
  end

  def send_all_reports
    puts "send all reports..."
  end
end

class Employee

  attr_reader :first_name, :last_name, :salary
  attr_writer :salary

  def initialize(employee_hash)
    @first_name = employee_hash[:first_name]
    @last_name = employee_hash[:last_name]
    @salary = employee_hash[:salary]
  end

  def info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year"
  end
end

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

class Intern < Employee
  include ReportEmail
end







employee1 = Employee.new({first_name: "Bob", last_name: "Campos", salary: 20000})
employee2 = Employee.new({first_name: "Carl", last_name: "Anderson", salary: 20000})
manager1 = Manager.new({first_name: "Sally", last_name: "Miller", salary: 20000, employees: [employee1, employee2]})
intern1 = Intern.new({first_name: "Joesph", last_name: "Alpha", salary: 20000})


manager1.info
manager1.send_report

intern1.info
intern1.fire_all_employees