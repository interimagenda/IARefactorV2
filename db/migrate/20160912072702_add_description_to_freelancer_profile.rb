class AddDescriptionToFreelancerProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :freelancer_profiles, :description, :text
    add_column :freelancer_profiles, :location, :string
    add_column :freelancer_profiles, :pay_rate, :decimal
  end
end
