class AddIndexToContent < ActiveRecord::Migration
  def change
    add_index :blogs,:content,unique: true
  end
end
