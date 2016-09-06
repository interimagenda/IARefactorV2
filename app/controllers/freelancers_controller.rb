class FreelancersController < ApplicationController

  before_action :authenticate_user!

  # Freelancer is role_id 1 (2 is for employers)

  def index
    if current_user.employer?
      if params[:freelancer_search]
        @freelancers = User.where(role_id: 1).freelancer_search(params[:freelancer_search]).paginate(page: params[:page], per_page: 25)
      else
        @freelancers = User.where(role_id: 1).paginate(page: params[:page], per_page: 20)
      end
    else
      flash[:error] = "I'm sorry, this page is restricted."
      redirect_to root_path
      # @favorites = @freelancers.where(id: current_user.followees(User).map(&:id))
    end
  end

  def show
    freelancer = User.where(role_id: 1)
    @freelancer = freelancer.find(params[:id])
  end

end
