class AddTitle < ActiveRecord::Migration
  def change
    add_column :movies, :title, :string
  end
end
