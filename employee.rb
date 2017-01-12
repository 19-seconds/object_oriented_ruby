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

class Manager < Employee

  def initialize(employee_hash)
    @first_name = employee_hash[:first_name]
    @last_name = employee_hash[:last_name]
    @salary = employee_hash[:salary]
    @employees = employee_hash[:employees]
  end

  def send_report
    puts "Sending Email......"
    puts "Email sent!"
  end

  def print_subordinates
    @employees.each_with_index do |employee, index|
      puts "Employee: #{index + 1}'s info: #{employee.info}"
    end
  end

end







employee1 = Employee.new({first_name: "Bob", last_name: "Campos", salary: 20000})
employee2 = Employee.new({first_name: "Carl", last_name: "Anderson", salary: 20000})
manager1 = Manager.new({first_name: "Sally", last_name: "Miller", salary: 20000, employees: [employee1, employee2]})

# p employee1
manager1.send_report
puts manager1.info
manager1.print_subordinates
