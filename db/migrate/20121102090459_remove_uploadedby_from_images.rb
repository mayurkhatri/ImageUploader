class RemoveUploadedbyFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :uploadedby
  end

  def down
    add_column :images, :uploadedby, :string
  end
end
