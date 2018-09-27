class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :release_date
      t.string :director
      t.string :lead
      t.boolean :in_theaters
      # title: "Wargames", release_date: 1983, director: "John Badham", lead: "Matthew Broderick", in_theaters: false)
    end
  end
end
