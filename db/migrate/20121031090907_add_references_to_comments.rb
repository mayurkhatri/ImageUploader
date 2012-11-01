class AddReferencesToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.references :image
    end
    add_index :comments, :image_id
  end
end
