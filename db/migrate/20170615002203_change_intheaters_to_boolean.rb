class ChangeIntheatersToBoolean < ActiveRecord::Migration
  def self.up
    change_column(:movies, :in_theaters, :boolean
    )
  end
end
