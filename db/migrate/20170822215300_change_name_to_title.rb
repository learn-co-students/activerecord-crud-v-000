class ChangeNameToTitle < ActiveRecord::Migration
  def change
    remove_column :movies, :name
    add_column :movies, :title, :string
  end
end
