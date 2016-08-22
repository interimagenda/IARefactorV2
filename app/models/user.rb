class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :role
  before_save :assign_role

  def assign_role
    self.role = Role.find_by title: "Freelancer" if self.role.nil?
  end

end
