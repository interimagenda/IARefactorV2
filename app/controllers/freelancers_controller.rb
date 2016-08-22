class FreelancersController < ApplicationController

  # Freelancer is role_id 1 (2 is for employers)

  def index
    @freelancers = User.where(role_id: 1)
  end

  def show
    freelancer = User.where(role_id: 1)
    @freelancer = freelancer.find(params[:id])
  end

end
