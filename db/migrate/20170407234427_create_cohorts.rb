class CreateCohorts < ActiveRecord::Migration[5.0]
  def change
    create_table :cohorts do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
