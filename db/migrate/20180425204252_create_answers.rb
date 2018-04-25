class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.column :answer_title, :string
      t.column :answer_body, :string
      t.column :question_id, :integer
    end
  end
end
