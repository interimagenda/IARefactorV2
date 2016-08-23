class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  acts_as_followable
  acts_as_follower
  acts_as_liker
  acts_as_messageable

  belongs_to :role
  has_many :jobs
  before_save :assign_role

  ROLES = ["Freelancer", "Employer"]

  def assign_role
    self.role = Role.find_by title: "Freelancer" if self.role.nil?
  end

  def freelancer?
    self.role.title == "Freelancer"
  end

  def employer?
    self.role.title == "Employer"
  end

  def mailboxer_email(object)
    email
  end

end
