class EmployersController < ApplicationController

  before_action :authenticate_user!

  # Employer is role_id 2 (1 is for freelancers)

  def index
    if current_user.freelancer?
      if params[:employer_search]
        @employers = User.where(role_id: 2).employer_search(params[:employer_search]).order("created_at DESC").paginate(page: params[:page], per_page: 25)
      else
        @employers = User.where(role_id: 2).paginate(page: params[:page], per_page: 20)
      end
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
