class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  
  end

  def show
    # ID of the restaurant
    @restaurant = Restaurant.find(params[:id])

  end

  def new
    # Create a resdtaurant
    # @restaurants = Restaurant.new
    @restaurant = Restaurant.new
    # use simple form 
    
  end

  private

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :address, :category)
  # end
  

  
  
  
  
end



# CREATE

# Flat.new(flat_params)
# IF @flat.save
# redirect_to flat_path(@flat).
# else
# render :new 

# EDIT
# def edit
  # set_flat
# end


# private
# def set_flat
  # @restaurant = Restaurant.find(params[:id])
# end
# def flat_params
# params.require(:flat).permit(:name, :addresss, : description...)
#end


