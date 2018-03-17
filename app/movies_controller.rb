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
  movie = Movie.create(attributes)
  
end

def can_be_created_in_a_block(args = {__})
  Movie.create do |m|
    m.title = "Home Alone"
    m.release_date = 1990
    m.director = "Chris Columbus"
    m.lead = "Macaulay Culkin"
    m.in_theaters = false
  end
end

def can_get_the_first_item_in_the_database
  movie = Movie.all[0].title
end

def can_get_the_last_item_in_the_database
  movie = Movie.all.last.title
end

def can_get_size_of_the_database
  movie = Movie.all.length
end

def can_find_the_first_item_from_the_database_using_id
  movies = Movie.all
  movies.each do |m|
    if m.id == 1
      return m.title
    end
  end
end

def can_find_by_multiple_attributes
   title = "Title"
   release_date = 2000
   director = "Me"
   movies = Movie.all 
   movies.each do |m|
     if m.title == "Title" &&
        m.release_date == 2000 &&
        m.director == "Me"
        return m
      end
    end
  
end

def can_find_using_where_clause_and_be_sorted
  # For this test return all movies released after 2002 and ordered by 
  # release date descending
  movies = Movie.all 
  after_2002 = []
  movies.sort_by { |m| m.release_date}
  movies.each do |m|
    if m.release_date > 2002
      after_2002 << m
    end
  end
  after_2002.sort.reverse
end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick"
  Movie.create(title: "Awesome Flick")
  Movie.all.each do |m|
    if m.title == "Awesome Flick"
       m.title = "Even Awesomer Flick"
       m.save
    end
  end
  
end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
  movie = Movie.create(title: "Wat?")
  movie.title = "Wat, huh?"  
  movie.save
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  5.times do |i|
    Movie.create(title: "Movie_#{i}", release_date: 2000+i)
  end
  Movie.all.each do |m|
    m.title = "A Movie"
    m.save
  end
end

def can_destroy_a_single_item
  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  Movie.all.each do |m| 
    if m.title == "That One Where the Guy Kicks Another Guy Once"
      m.delete
    end
  end
end

def can_destroy_all_items_at_once
  10.times do |i|
    Movie.create(title: "Movie_#{i}")
  end
  Movie.all.each do |m|
    m.delete 
  end
end








