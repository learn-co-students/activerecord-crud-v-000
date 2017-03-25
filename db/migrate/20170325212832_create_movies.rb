class CreateMovies < ActiveRecord::Migration

  def change
    create_table(:movies) do |mov|
      mov.string :title
      mov.datetime :release_date
      mov.text :director
      mov.string :lead
      mov.boolean :in_theaters
    end
  end

end
