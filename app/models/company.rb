class Company < ApplicationRecord
	validates :company_name, 	length: { minimum: 2 }
	validates	:number_of_employees, numericality: { only_integer: true }
	validates	:slogan, length: { minimum: 5 }
	validates	:cultural_values, presence: true
	validates	:country, presence: true
	validates	:phone_number, presence: true
end
