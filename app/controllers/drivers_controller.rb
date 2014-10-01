class DriversController < ApplicationController

	def index
		@drivers = Driver.all
	end

	def show
		@drivers = Driver.find(params[:id])
	end

	def new
		@driver = Driver.new
	end

	def create
		@drivers = Driver.new(driver_params)

		if @drivers.save
			redirect_to @driver, notice: "Driver info was saved!"
		else 
			render 'new'
		end
	end

	def update
		@driver = Driver.find(params[:id])

		if @driver.update(driver_params)
			redirect_to @driver, notice: "Driver information was updated!"
		else
			render 'new', notice: "Driver info was not updated. Create new?"
		end
	end

	def edit
		@driver = Driver.find(params[:id])
	end

	private

	def driver_params
		params.require(:driver).permit(:firstName, :lastName, :languagesSpoken, :city, :phone)
	end

end
