class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :audio
      t.string :title
      t.references :user

      t.timestamps
    end
    add_index :audios, :user_id
  end
end
