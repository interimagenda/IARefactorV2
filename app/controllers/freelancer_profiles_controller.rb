class FreelancerProfilesController < ApplicationController

  load_and_authorize_resource

  def show
    @freelancer_profile = current_user.freelancer_profile
  end

  def new
    if !current_user.freelancer_profile
      @freelancer_profile = FreelancerProfile.new
    elsif current_user.freelancer_profile
      flash[:error] = "You already created your profile!"
    end
  end

  def edit
    @freelancer_profile = current_user.freelancer_profile
  end

  def update
    @freelancer_profile = current_user.freelancer_profile
    if @freelancer_profile.update_attributes(update_params)
      flash[:success] = "Your profile has been updated."
      redirect_to root_path
    else
      flash[:error] = "Something went wrong. Please try again."
      render 'edit'
    end
  end

  def create
    @freelancer_profile = FreelancerProfile.new(create_params)
    @freelancer_profile.user_id = current_user.id
    if @freelancer_profile.save
      flash[:success] = "Your profile was created!"
      redirect_to root_path
    else
      flash[:error] = "Something went wrong. Please try again."
      render 'new'
    end
  end

  private

  def create_params
    params.require(:freelancer_profile).permit(:business, :user_id)
  end

  def update_params
    params.require(:freelancer_profile).permit(:business, :user_id)
  end

  # no destroy action - when you made your profile, you should only be able to
  # delete it when deleting your user account.

end
