class PagesController < ApplicationController

  def about
  end

  def blogs
  end

  def contact
  end

  def landing
    if current_user
      if current_user.freelancer?
        redirect_to jobs_path
      elsif current_user.employer?
        redirect_to freelancers_path
      end
    end
  end

  def guide
  end

  def terms_and_conditions
  end

  def faq
  end

end
