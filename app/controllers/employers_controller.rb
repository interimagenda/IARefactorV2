class EmployersController < ApplicationController

  # Employer is role_id 2 (1 is for freelancers)

  def index
    @employers = User.where(role_id: 2)
  end

  def show
    employer = User.where(role_id: 2)
    @employer = employer.find(params[:id])
  end

end
