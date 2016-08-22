class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

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

end
