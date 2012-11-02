class RenameUploadedbyInComments < ActiveRecord::Migration
  def up
    rename_column(:comments, :uploadedby, :commentedby)
  end

  def down
    rename_column(:comments, :commentedby, :uploadedby)
  end
end
