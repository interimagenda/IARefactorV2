class AddFteToJob < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :fte, :decimal
  end
end
