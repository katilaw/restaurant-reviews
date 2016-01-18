class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      flash[:notice] = "Review added successfully"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:errors] = @review.errors.full_messages.join(". ")
      render :new
    end

  end

  private
  def review_params
    params.require(:review).permit(:rating, :body, :restaurant_id)
  end
end
