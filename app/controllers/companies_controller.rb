class CompaniesController < ApplicationController
	def show
		@company = Company.find(params[:id])
	end

	def new
	end

	def create
		@company = Company.new(company_params)

		@company.save
		redirect_to @company
	end

	private
		def company_params
			params.require(:company).permit(:company_name, :number_of_employees, :logo, :slogan, :cultural_values, :country, :phone_number)
		end
end