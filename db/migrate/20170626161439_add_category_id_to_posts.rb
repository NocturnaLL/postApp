class AddCategoryIdToPosts < ActiveRecord::Migration[5.1]
  def change
  add_column :posts, :category_id, :integer
   add_foreign_key :posts, :categories
  end
end
