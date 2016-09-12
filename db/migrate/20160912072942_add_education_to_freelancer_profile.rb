class AddEducationToFreelancerProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :freelancer_profiles, :education, :string
  end
end
