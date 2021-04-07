class CreateCashiers < ActiveRecord::Migration[5.2]
  def change
    create_table :cashiers do |t|
      t.string :employee_name
      t.text :employee_address
      t.string :employee_salary

      t.timestamps
    end
  end
end
