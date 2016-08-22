class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.date :start_date
      t.date :closing_date
      t.text :description
      t.string :city
      t.string :country
      t.integer :hours_a_week
      t.text :responsibilities
      t.text :experience_requirement
      t.text :education_requirement
      t.text :skill_requirements
      t.text :official_requirements
      t.decimal :pay_rate_minimum
      t.decimal :pay_rate_maximum
      t.timestamps
    end
  end
end
