class AddImageToPost < ActiveRecord::Migration[5.1]
  def change
    change_table :posts do |t|
      t.attachment :avatar
    end
  end
end
