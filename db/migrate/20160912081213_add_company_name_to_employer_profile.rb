class AddCompanyNameToEmployerProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :employer_profiles, :company_name, :string
  end
end
