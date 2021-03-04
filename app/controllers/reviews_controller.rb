class ReviewsController < ApplicationController
    def create
    @mentor = Mentor.find(params[:mentor_id])
    @review = Review.new(param_reviews)
    @review.mentor = @mentor
    if @review.save
      redirect_to mentor_path(@mentor)
    else
      render 'mentor/show'
    end
  end

private

def param_reviews
  params.require(:review).permit(:content, :rating)
end
end
