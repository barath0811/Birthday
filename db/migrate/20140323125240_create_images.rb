class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.references :user

      t.timestamps
    end
    add_index :images, :user_id
  end
end
