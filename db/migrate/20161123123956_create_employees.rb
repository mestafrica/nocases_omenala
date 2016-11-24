class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :job_title
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
