class CreateExamCreations < ActiveRecord::Migration[5.0]
  def change
    create_table :exam_creations do |t|
      t.string :name,null: false,unique: :true
      t.integer :exam_duration,null: false
      t.integer :passing_marks,null: false
      t.references :subject, foreign_key: true
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
