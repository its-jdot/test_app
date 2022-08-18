class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.string :question_id
      t.string :choice_body
      t.integer :choice_score

      t.timestamps
    end
  end
end
