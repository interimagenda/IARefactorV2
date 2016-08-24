class CreateEmployerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :employer_profiles do |t|
      t.string :business
      t.references :user

      t.timestamps
    end
  end
end
