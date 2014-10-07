class CreateBookingRequests < ActiveRecord::Migration
  def change
    create_table :booking_requests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.date :pikup_date
      t.string :pickup_location
      t.date :drop_date
      t.string :drop_location
      t.integer :passengers

      t.timestamps
    end
  end
end
