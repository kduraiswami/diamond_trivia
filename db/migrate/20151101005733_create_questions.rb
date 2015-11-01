class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :prompt
      t.string :answer
      t.string :dummy_answer_1
      t.string :dummy_answer_2
      t.string :dummy_answer_3

      t.timestamps null: false
    end
  end
end
