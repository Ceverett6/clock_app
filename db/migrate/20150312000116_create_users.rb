class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.integer :employee_Id
      t.string :employee_type

      t.timestamps null: false
    end
  end
end
