require "employee"

class Startup
    attr_reader :name ,:funding ,:salaries ,:employees
    def initialize(name,funding,salaries)
        @name = name
        @funding = funding
        @salaries = salaries
        @employees = []
    end
    def valid_title?(title)
        @salaries.has_key?(title)
    end
    def >(other_startup)
        # startup_1 > startup_2  == startup_1.>(startup_2) ((">" is a method)
        self.funding > other_startup.funding
    end
    def hire(employee_name,title)
        if self.valid_title?(title)
            @employees << Employee.new(employee_name,title)
        else
            raise "Error"
        end
    end
    def size
        @employees.size
    end
    def pay_employee(employee)
        if Employee.pay()
    end
end
