class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :image_file_name, :string
      t.column :image_content_type, :string
      t.column :image_file_size, :integer
      t.column :image_updated_at, :datetime
      t.column :user_id, :integer
    end
  end
end
