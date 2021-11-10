class CreateEmployeeDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :employee_details do |t|
      t.string :fName
      t.string :lName
      t.string :email
      t.string :role
      t.integer :experience

      t.timestamps
    end
  end
end
