class AddForeignkeyToComments < ActiveRecord::Migration
  def up
    execute "ALTER TABLE Comments
      ADD CONSTRAINT fk_image_id_comments FOREIGN KEY (image_id)
      REFERENCES Images(id)"
  end

  def down
    execute "ALTER TABLE Comments
      DROP FOREIGN KEY fk_image_id_comments"

#    remove_index(:comments, column: :image_id)
#    change_table :comments do |t|
#      t.remove :image_id
#    end

  end
end
