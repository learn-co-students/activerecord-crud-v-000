class AddColumnsToMovieTable < ActiveRecord::Migration
    def change #title ,release_date, director, lead, and in_theaters
        add_column(:movies,:title, :string)
        add_column(:movies,:release_date, :integer)
        add_column(:movies,:director, :string)
        add_column(:movies,:lead, :string)
        add_column(:movies,:in_theaters, :boolean)
    end
end