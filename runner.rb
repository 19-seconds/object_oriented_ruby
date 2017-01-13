require "./employee.rb"
require "./manager.rb"
require "./intern.rb"


employee1 = Employee.new({first_name: "Bob", last_name: "Campos", salary: 20000})
employee2 = Employee.new({first_name: "Carl", last_name: "Anderson", salary: 20000})
manager1 = Manager.new({first_name: "Sally", last_name: "Miller", salary: 20000, employees: [employee1, employee2]})


manager1.info
manager1.send_report


intern = Intern.new({first_name: "Carl", last_name: "Anderson", salary: 20000})
intern.info
intern.send_report