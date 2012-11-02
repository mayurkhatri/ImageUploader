class AddForeignkeyToImages < ActiveRecord::Migration
  def up
    change_table :images do |t|
      t.references :user
    end
    add_index :images, :user_id
    execute "ALTER TABLE Images
      ADD CONSTRAINT fk_user_id_images FOREIGN KEY (user_id)
      REFERENCES Users(id)"
  end

  def down
    execute "ALTER TABLE Images
      DROP FOREIGN KEY fk_user_id_images"
    remove_index(:images, column: :user_id)
    change_table :images do |t|
      t.remove :user_id
    end
  end
end
