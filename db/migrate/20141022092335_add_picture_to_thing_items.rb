class AddPictureToThingItems < ActiveRecord::Migration
  def change
    add_column :thing_items, :picture, :string
  end
end
