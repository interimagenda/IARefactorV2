class CreateFreelancerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :freelancer_profiles do |t|
      t.string :business
      t.references :user

      t.timestamps
    end
  end
end
