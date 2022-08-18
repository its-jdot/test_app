class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :test_id
      t.string :body
      t.integer :question_score

      t.timestamps
    end
  end
end
