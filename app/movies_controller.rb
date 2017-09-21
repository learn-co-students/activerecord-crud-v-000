# Replace the '__' in the below methods to to make the specs pass!
# Each '__' corresponds to a single line of code you will need to write.
# See the example below on the left and how it should look on the right.
# def make_a_new_movie_instance    # def make_a_new_movie_instance
#   movie = __                     #   movie = Movie.new
# end                              # end
require 'pry'
def can_be_instantiated_and_then_saved
  movie = Movie.new
  movie.title = "This is a title."
  movie.save
end

def can_be_created_with_a_hash_of_attributes
  attributes = {
      title: "The Sting",
      release_date: 1973,
      director: "George Roy Hill",
      lead: "Paul Newman",
      in_theaters: false
  }
  movie = Movie.new(attributes)
  movie.id = nil
  #doesn't look right, but it worked
end

def can_be_created_in_a_block
  Movie.create do |m|
    m.id = nil
    m.title = "Home Alone"
    m.release_date = 1990
  end
end

def can_get_the_first_item_in_the_database
  Movie.first.title
end

def can_get_the_last_item_in_the_database
  Movie.last.title
end

def can_get_size_of_the_database
  Movie.all.size
end

def can_find_the_first_item_from_the_database_using_id
  Movie.find(1).title
end

def can_find_by_multiple_attributes
  # title == "Title"
  # release_date == 2000
  # director == "Me"
  Movie.find_by(:title => "Title", :release_date => 2000, :director => "Me")
end

def can_find_using_where_clause_and_be_sorted
  # For this test return all movies released after 2002 and ordered by
  # release date descending
  Movie.where("release_date > 2002").order(release_date: :desc)
end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick"
  Movie.create(title: "Awesome Flick")
  movie = Movie.find_by(:title => "Awesome Flick")
  movie.title = "Even Awesomer Flick"
  movie.save
end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
  Movie.create(title: "Wat?")
  movie = Movie.find_by(:title => "Wat?")
  movie.title = "Wat, huh?"
  movie.save
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  5.times do |i|
    Movie.create(title: "Movie_#{i}", release_date: 2000+i)
  end
  Movie.all.each do |movie|
    movie.title = "A Movie"
    movie.save
  end
end

def can_destroy_a_single_item
  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  Movie.destroy(1)

end

def can_destroy_all_items_at_once
  10.times do |i|
    Movie.create(title: "Movie_#{i}")
  end
  Movie.destroy_all
end




#
#     context 'reading' do
#       before do
#         5.times do |i|
#           Movie.create(title: "Movie_#{i}", release_date: i+2000)
#         end
#       end
#
#       it 'can get the first item in the database' do
#         movie = can_get_the_first_item_in_the_database
#         expect(movie).to eq("Movie_0")
#       end
#
#       it 'can get the last item in the databse' do
#         movie = can_get_the_last_item_in_the_database
#         expect(movie).to eq("Movie_4")
#       end
#
#       it 'can get size of the database' do
#         movies_size = can_get_size_of_the_database
#         expect(movies_size).to eq(5)
#       end
#
#       it 'can retrive the first item from the database by id' do
#         expect(can_find_the_first_item_from_the_database_using_id).to eq("Movie_0")
#       end
#
#       it 'can retrieve from the database using different attributes' do
#         movie = Movie.create(title: "Title", release_date: 2000, director: "Me")
#         expect(can_find_by_multiple_attributes).to eq(movie)
#       end
#
#       it 'can use a where clause and be sorted' do
#         expect(can_find_using_where_clause_and_be_sorted.map{|m| m.title}).to eq(["Movie_4", "Movie_3"])
#       end
#     end
#
#     context 'updating' do
#       it 'can be found, updated, and saved' do
#         movie = Movie.create(title: "Awesome Flick")
#         expect {
#           can_be_found_updated_and_saved
#           movie.reload
#         }.to change{ movie.title }.from("Awesome Flick").to("Even Awesomer Flick")
#       end
#
#       it 'can be updated using #update' do
#         can_update_using_update_method
#         expect(Movie.find_by(title: "Wat, huh?")).to_not be_nil
#       end
#
#       it 'can update all records at once' do
#         can_update_multiple_items_at_once
#         expect(Movie.where(title: "A Movie").size).to eq(5)
#       end
#     end
#
#     context 'destroying' do
#       it 'can destroy a single item' do
#         can_destroy_a_single_item
#         expect(Movie.find_by(title: "That One Where the Guy Kicks Another Guy Once")).to be_nil
#       end
#
#       it 'can destroy all items at once' do
#         can_destroy_all_items_at_once
#         expect(Movie.all.size).to eq(0)
#       end
#     end
#   end
# end
