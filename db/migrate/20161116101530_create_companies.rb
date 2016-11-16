class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.text :company_name
      t.integer :number_of_employees
      t.binary :logo
      t.text :slogan
      t.text :cultural_values
      t.text :country
      t.text :phone_number

      t.timestamps
    end
  end
end
