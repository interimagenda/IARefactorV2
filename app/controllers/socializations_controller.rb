class SocializationsController < ApplicationController
  before_filter :load_socializable

  def follow
    current_user.follow!(@socializable)
    redirect_to (:back)
  end

  def unfollow
    current_user.unfollow!(@socializable)
    redirect_to (:back)
  end

  def like
    current_user.like!(@socializable)
    redirect_to (:back)
  end

  def unlike
    current_user.unlike!(@socializable)
    redirect_to (:back)
  end

  private

  def load_socializable
    @socializable =
      if id = params[:user_id]
        User.find(id)
      elsif id = params[:job_id]
        Job.find(id)
      else
        raise ArgumentError, "Unsupported socializable model, params: " +
                             params.keys.inspect
      end
    raise ActiveRecord::RecordNotFound unless @socializable
  end

end
