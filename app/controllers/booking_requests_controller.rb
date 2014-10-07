class BookingRequestsController < ApplicationController

	def new
    @bookingrequest = BookingRequest.new
  end

  def create
    @bookingrequest = BookingRequest.new(params[:contact])
    @bookingrequest.request = request
   if @bookingrequest.deliver
      flash.now[:error] = nil
      flash.now[:notice] = 'Thank you for your booking request!'
   else
      flash.now[:error] = 'Cannot send message. Please try again!'
      render :new
   end
  end

end
