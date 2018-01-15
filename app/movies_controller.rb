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

def can_be_created_in_a_block
  Movie.create do |m|
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
  Movie.count
end

def can_find_the_first_item_from_the_database_using_id
  movie = Movie.find(1)
  movie.title
end

def can_find_by_multiple_attributes
  # title == "Title"
  # release_date == 2000
  # director == "Me"
  movie = Movie.find_by(title: "Title", release_date: 2000, director: "Me")
end

def can_find_using_where_clause_and_be_sorted
  # For this test return all movies released after 2002 and ordered by
  # release date descending
  movie = Movie.where("release_date > ?", 2002)
  movie.sort { |x,y| y <=> x }
end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick"
  movie = Movie.create(title: "Awesome Flick")
  movie = Movie.find_by(title: "Awesome Flick")
  movie = Movie.update(title: "Even Awesomer Flick")
end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
  movie = Movie.create(title: "Wat?")
  movie = Movie.update(title: "Wat, huh?")
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  5.times do |i|
    Movie.create(title: "Movie_#{i}", release_date: 2000+i)
  end
  Movie.update(title: "A Movie")
end

def can_destroy_a_single_item
  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  movie = Movie.find_by(title: "That One Where the Guy Kicks Another Guy Once")
  binding.pry
  id = movie.id
  Movie.destroy(id)
end

def can_destroy_all_items_at_once
  10.times do |i|
    Movie.create(title: "Movie_#{i}")
  end
  Movie.destroy_all
end
