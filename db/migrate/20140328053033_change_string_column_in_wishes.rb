class ChangeStringColumnInWishes < ActiveRecord::Migration
  def up
  	change_column :wishes, :wish, :text, :limit => nil
  end

  def down
  end
end
