class AddBusinessToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :business, :string
  end
end
