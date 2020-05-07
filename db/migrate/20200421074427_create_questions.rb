class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.references :subject, foreign_key: true
      t.references :topic, foreign_key: true
      t.string :question_type,null: false,unique: true
      t.string :question_body,null: false,unique: true
      t.string :option1,null: false
      t.string :option2,null: false
      t.string :option3
      t.string :option4
      t.string :answer
      t.string :model_answer,null: false
      t.boolean :status

      t.timestamps
    end
  end
end
