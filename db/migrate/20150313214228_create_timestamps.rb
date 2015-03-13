class CreateTimestamps < ActiveRecord::Migration
  def change
    create_table :timestamps do |t|
      t.integer :employee_Id
      t.time :time_in
      t.time :time_out

      t.timestamps null: false
    end
  end
end
