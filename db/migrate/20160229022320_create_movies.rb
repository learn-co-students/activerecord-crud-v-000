class CreateMovies < ActiveRecord::Migration
	def change
    	create_table :movies do |t|
      		t.string :title
      		t.string :director
      		t.datetime :release_date
      		t.string :lead
      		t.datetime :in_theaters
    end
  end
end
