class MentorsController < ApplicationController
before_action :authenticate_user!
before_action :find_mentor, only: [:show, :edit, :update, :destroy]

def index
  @mentors = Mentor.all
  @markers = @mentors.geocoded.map do |mentor|
    {
      lat: mentor.latitude,
      lng: mentor.longitude
    }
  end
end

def show
end

def new
  @mentor = Mentor.new
  @mentor.avatar.attach(params[:avatar])
end

def create
  @mentor = Mentor.new(mentor_params)
  @mentor.user = current_user
  if @mentor.save
    redirect_to mentor_path(@mentor)
  else
    render :new
  end
end

def edit
end

def update
  @mentor.update(mentor_params)
  redirect_to mentor_path(@mentor)
end

def destroy
  @mentor.destroy
  redirect_to mentors_path
end


private


def find_mentor
  @mentor = Mentor.find(params[:id])
end

def mentor_params
  params.require(:mentor).permit(:avatar, :title, :description, :price, :speciality)
end
end
