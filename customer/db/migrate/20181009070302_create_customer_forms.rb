class CreateCustomerForms < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_forms do |t|
      t.text :name
      t.date :DOB
      t.text :Address
      t.number :Phone_no

      t.timestamps
    end
  end
end
