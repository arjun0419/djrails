class BookingRequestsController < ApplicationController

	def new
    @bookingrequest = BookingRequest.new
  end

  def create
    @bookingrequest = BookingRequest.new(booking_request_params)
    if @bookingrequest.save
    else 
      flash[:error]=@bookingrequest.errors.messages
      redirect_to new_booking_request_path
    end
  end




	private

	def booking_request_params
		params.require(:booking_request).permit(:first_name, :last_name, :email, :pickup_date, :pickup_location, :drop_date, :drop_location, :passengers)
	end
end