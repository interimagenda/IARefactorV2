class JobsController < ApplicationController

  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @jobs = @jobs.paginate(page: params[:page], per_page: 25)
    @favorite_jobs = @jobs.where(id: current_user.likees(Job).map(&:id));
  end

  def show
  end

  def new
  end

  def create
    @job = Job.new(create_params)
    @job.user_id = current_user.id
    if @job.save
      flash[:success] = "The job was created."
      redirect_to jobs_path
    else
      flash[:error] = "Something went wrong. Please try again."
      render 'new'
    end
  end

  def edit
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    if @job.update_attributes(update_params)
      flash[:success] = "The job has been updated."
      redirect_to jobs_path
    else
      flash[:error] = "Something went wrong. Please try again."
      render 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:success] = "The job has been deleted."
    redirect_to jobs_path
  end

  private

  def create_params
    params.require( :job ).permit(:title, :user_id )
  end

  def update_params
    params.require( :job ).permit(:title, :user_id)
  end

end
