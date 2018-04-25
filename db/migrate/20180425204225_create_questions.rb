class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.column :question_title, :string
      t.column :question_body, :string
      t.column :user_id, :integer
    end
  end
end
