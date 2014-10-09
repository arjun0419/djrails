class UpdatePikupDateOnBookingRequest < ActiveRecord::Migration
  def change
  	rename_column(:booking_requests, :pikup_date, :pickup_date)
  end
end
