class EmployersController < ApplicationController

  before_action :authenticate_user!

  # Employer is role_id 2 (1 is for freelancers)

  def index
    if current_user.freelancer?
      @employers = User.where(role_id: 2).paginate(page: params[:page], per_page: 2)
      @favorites = @employers.where(id: current_user.followees(User).map(&:id));
    else
      flash[:error] = "I'm sorry, this page is restricted."
      redirect_to root_path
    end
  end

  def show
    if current_user.freelancer?
      employer = User.where(role_id: 2)
      @employer = employer.find(params[:id])
    else
      flash[:error] = "I'm sorry, this page is restricted."
      redirect_to root_path
    end
  end

end
