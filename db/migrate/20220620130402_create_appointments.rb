class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.integer :post_id
      t.integer :user_id
      t.date :start_date
      t.date :end_date
      t.integer :appointment_status_id
      t.boolean :isactive

      t.timestamps
    end
  end
end
