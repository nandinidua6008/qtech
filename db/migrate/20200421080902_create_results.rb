class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.references :exam_creation, foreign_key: true
      t.references :schedule, foreign_key: true
      t.references :user, foreign_key: true
      t.string :fraud_suspected
      t.string :grades
      t.integer :attempted_questions,null: false
      t.integer :unattempted_questions,null: false
      t.integer :correct_answers,null: false
      t.integer :wrong_answers,null: false
      t.integer :marks,null: false

      t.timestamps
    end
  end
end
