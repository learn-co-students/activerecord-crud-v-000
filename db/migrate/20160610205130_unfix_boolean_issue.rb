class UnfixBooleanIssue < ActiveRecord::Migration
  def change
    change_column :movies, :in_theaters, :string
  end
end
