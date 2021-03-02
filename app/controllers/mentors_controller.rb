class MentorsController < ApplicationController
before_action :authenticate_user!

def index
  @mentors = Mentor.all
end

# def show
#   @mentor = Mentor.find(params[:id])
# end

def new
  @mentor = Mentor.new
end

def create
  @mentor = Mentor.new(mentor_params)
  if @mentor.save
    redirect_to mentor_path(@mentor)
  else
    render :new
  end
end

private

def mentor_params
  params.require(:mentor).permit(:title, :description, :price, :speciality)
end
end
