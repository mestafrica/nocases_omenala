require 'securerandom'

class EmployeeMailer < ApplicationMailer
	default from: 'admin@omenala.com'

	def password_email(employee)
		@employee = employee
		@pwd = SecureRandom.hex(3)
		@url = 'http://localhost:3000/companies'
		mail(to: @employee.email, subject: 'Your Password to Your Company on Omenala')
	end
end
