class JobsController < ApplicationController

  before_action :authenticate_user!, except: [:index]

  def index
    @jobs = Job.all.paginate(page: params[:page], per_page: 25)
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      flash[:success] = "The job was created."
      redirect_to root_path
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
    if @job.update_attributes(job_params)
      flash[:success] = "The job has been updated."
      redirect_to root_path
    else
      flash[:error] = "Something went wrong. Please try again."
      render 'edit'
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:success] = "The job has been deleted."
    redirect_to root_path
  end

  private

  def job_params
    params.require( :job ).permit(:title )
  end

end
