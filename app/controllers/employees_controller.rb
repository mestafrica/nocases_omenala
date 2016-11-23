class EmployeesController < ApplicationController
	def create
		@company = Company.find(params[:company_id])
		@employee = @company.employees.create(employee_params)
		redirect_to company_path(@company)
	end

	private
		def employee_params
			params.require(:employee).permit(:first_name, :last_name, :email, :job_title)
		end
end
