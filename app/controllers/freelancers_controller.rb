class FreelancersController < ApplicationController

  before_action :authenticate_user!

  # Freelancer is role_id 1 (2 is for employers)

  def index
    @freelancers = User.where(role_id: 1)
    @favorites = @freelancers.where(id: current_user.followees(User).map(&:id));
  end

  def show
    freelancer = User.where(role_id: 1)
    @freelancer = freelancer.find(params[:id])
  end

end
