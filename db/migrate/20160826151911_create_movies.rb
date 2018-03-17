class CreateMovies < ActiveRecord::Migration

def change
  create_table(:movies) do |z|
    z.string :title
    z.datetime :release_date
    z.string :director
    z.string :lead
    z.boolean :in_theaters
  end
end

end
