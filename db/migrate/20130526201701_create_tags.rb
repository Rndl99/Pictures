class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.references :picture

      t.timestamps
    end
    add_index :tags, :picture_id
  end
end
