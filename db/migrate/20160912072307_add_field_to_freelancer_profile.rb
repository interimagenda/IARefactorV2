class AddFieldToFreelancerProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :freelancer_profiles, :field, :string
  end
end
