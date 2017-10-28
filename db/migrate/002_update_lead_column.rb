class UpdateLeadColumn < ActiveRecord::Migration
  def change
    rename_column :movies, :lead_role, :lead
  end
end
