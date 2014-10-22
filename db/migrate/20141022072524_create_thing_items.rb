class CreateThingItems < ActiveRecord::Migration
  def change
    create_table :thing_items do |t|
      t.string :name

      t.timestamps
    end
  end
end
