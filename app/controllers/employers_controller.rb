class EmployersController < ApplicationController

  before_action :authenticate_user!

  # Employer is role_id 2 (1 is for freelancers)

  def index
    @employers = User.where(role_id: 2)
    @favorites = @employers.where(id: current_user.followees(User).map(&:id));
  end

  def show
    employer = User.where(role_id: 2)
    @employer = employer.find(params[:id])
  end

end
