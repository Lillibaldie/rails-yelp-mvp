class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`

    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    @review.restaurant = Restaurant.find
    @review.save
  end
end
