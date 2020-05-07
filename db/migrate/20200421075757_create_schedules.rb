class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.date :start_date,null: false
      t.date :end_date,null: false
      t.date :start_time
      t.date :end_time
      t.date :duration
      t.references :exam_creation, foreign_key: true

      t.timestamps
    end
  end
end
