class ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = Restaurant.find(params[:restaurant_id])
       if @review.save
      redirect_to restaurants_path(@restaurant)
    else
      render :restaurant_id
    end
  end

  def destroy

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating) # returns a cleared params
  end
end
