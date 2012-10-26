class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :title
      t.binary :imagedata
      t.string :uploadedby

      t.timestamps
    end
  end
end
