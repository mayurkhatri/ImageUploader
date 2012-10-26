class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :body
      t.string :uploadedby

      t.timestamps
    end
  end
end
