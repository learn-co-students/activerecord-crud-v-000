
require 'pry'

def can_be_instantiated_and_then_saved
  movie = Movie.create
  movie.update(title: "This is a title.")
end

def can_be_created_with_a_hash_of_attributes
  # Initialize movie and then and save it
  attributes = {
      title: "The Sting",
      release_date: 1973,
      director: "George Roy Hill",
      lead: "Paul Newman",
      in_theaters: false
  }
  movie = Movie.create(attributes)
end

def can_be_created_in_a_block(args = {title: "Home Alone", release_date: 1990})
  Movie.create do |m|
    m.title = args[:title]
    m.release_date = args[:release_date] #only interested in these two args
    m.save
  end
end

def can_get_the_first_item_in_the_database
  movie = Movie.first
end

def can_get_the_last_item_in_the_database
  movie = Movie.last
end

def can_get_size_of_the_database
  Movie.all.size
end

def can_find_the_first_item_from_the_database_using_id
  movie = Movie.find(1)
end

def can_find_by_multiple_attributes
  Movie.find_by title: "Title"
  Movie.find_by release_date: 2000
  Movie.find_by director: "Me"
end

def can_find_using_where_clause_and_be_sorted
  Movie.where("release_date > 2002").order(release_date: :desc)
end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick", save it, then return it
  #Movie.create(title: "Awesome Flick")this was prewritten but since the test already creates an instance, this creates two instances
  movie = Movie.find_by(title: "Awesome Flick")
  movie.update(title: "Even Awesomer Flick")
end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
  movie = Movie.create(title: "Wat?")
  movie.update(title: "Wat, huh?")
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  5.times do |i|
    movie = Movie.create(title: "Movie_#{i}", release_date: 2000+i)
    movie.update(title: "A Movie")
  end
end

def can_destroy_a_single_item
  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  movie = Movie.find_by(title: "That One Where the Guy Kicks Another Guy Once")
  movie.destroy
end

def can_destroy_all_items_at_once
  10.times do |i|
    Movie.create(title: "Movie_#{i}")
  end
  Movie.destroy_all
end
