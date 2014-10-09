class BookingRequest < ActiveRecord::Base
	validates :first_name, :last_name, :email, :phone, :pickup_date, :pickup_location, :drop_date, :drop_location, :passengers, presence: true
end
