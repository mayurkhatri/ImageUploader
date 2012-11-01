class RemoveImageDataFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :imagedata
      end

  def down
    add_column :images, :imagedata, :blob
  end
end
