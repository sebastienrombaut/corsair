class CorsairsController < ApplicationController
  def new
  	@corsair = Corsair.new
  end

  def create
		@corsair = Corsair.new(corsair_params)
		if @corsair.save
		redirect_to @corsair
		else
		  render 'new'
		end
	end

  def show
  	@corsair = Corsair.find(params[:id])
  end

  def edit
  	@corsair = Corsair.find(params[:id])
  end

  def index
  	@corsairs = Corsair.all
  end

  def update
		@corsair = Corsair.find(params[:id])
		if @corsair.update(corsair_params)
			redirect_to corsairs_path
		else
			render 'edit'
		end

	end

	def destroy
		@corsair = Corsair.find(params[:id])
		@corsair.destroy
		redirect_to corsairs_path
	end

  private 

  def corsair_params
 	   params.require(:corsair).permit(:first_name, :age)

  end

end
