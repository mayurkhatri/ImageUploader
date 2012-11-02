class AddForeignkeyToCommentsFromUsers < ActiveRecord::Migration
  def up
    change_table :comments do |t|
      t.references :user
    end
    add_index :comments, :user_id

    "ALTER TABLE Comments
      ADD CONSTRAINT fk_user_id_comments FOREIGN KEY (user_id)
      REFERENCES User(id)"
  end

  def down
    execute "ALTER TABLE Comments
      DROP FOREIGN KEY fk_user_id_comments"

    remove_index(:comments, column: :user_id)
    change_table :comments do |t|
      t.remove :user_id
    end

  end
end
