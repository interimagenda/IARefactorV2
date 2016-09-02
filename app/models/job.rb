class Job < ApplicationRecord
  belongs_to :user

  acts_as_likeable

  def self.job_search(query)
     where("title ILIKE ?", "%#{query}%")
  end

  def self.owner(user)
    where(id: user)
  end

end
