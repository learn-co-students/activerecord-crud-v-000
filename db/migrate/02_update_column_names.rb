class UpdateColumnNames < ActiveRecord::Migration

  def change
    rename_column :movies, :relase_date, :release_date
    rename_column :movies, :lead_actor_actress, :lead
  end
end
