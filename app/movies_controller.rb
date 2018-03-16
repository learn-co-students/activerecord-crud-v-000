# Replace the '__' in the below methods to to make the specs pass!
# Each '__' corresponds to a single line of code you will need to write.
# See the example below on the left and how it should look on the right.
# def make_a_new_movie_instance    # def make_a_new_movie_instance
#   movie = __                     #   movie = Movie.new
# end                              # end

def can_be_instantiated_and_then_saved
  movie = Movie.new
  movie.title = "This is a title."
  movie.save
  movie
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
  # attributes.each_with_index{|k,v|
  #     movie.k = v
  # }
  # attributes.each{|k,v|
  #   # binding.pry
  #   k = k.to_s
  #   movie.k = v
  # }
  movie.save
  movie
end

def can_be_created_in_a_block(args = {__})
  Movie.create do |m|
    m.title = "Home Alone"
    m.release_date = 1990
    # m.director =
    # m.lead =
    # m.in_theaters =
    m.save
    end
end

def can_get_the_first_item_in_the_database
  Movie.first.title
end

def can_get_the_last_item_in_the_database
  Movie.last.title
end

def can_get_size_of_the_database
  Movie.all.count
end

def can_find_the_first_item_from_the_database_using_id
  movie = Movie.find_by id: 1
  movie.title
end

def can_find_by_multiple_attributes
  # title == "Title"
  # release_date == 2000
  # director == "Me"
  # Movie.find("title = 'Title'")
  Movie.where(title: "Title", release_date: 2000, director: "Me").first
end

def can_find_using_where_clause_and_be_sorted
  # For this test return all movies released after 2002 and ordered by
  # release date descending
  Movie.where("release_date > 2002").order("release_date DESC")
end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick"
  Movie.create(title: "Awesome Flick")
  movie = Movie.find_by(title: "Awesome Flick")
  movie.update(title: "Even Awesomer Flick")
end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
  movie = Movie.create(title: "Wat?")
  movie.update(title: "Wat, huh?")
  # movie.save
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  allmovies = []
  5.times do |i|
    allmovies << Movie.create(title: "Movie_#{i}", release_date: 2000+i)
  end
  allmovies.each{|movie|
    movie.update(title: "A Movie")
  }
end

def can_destroy_a_single_item
  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  movie = Movie.find_by(title: "That One Where the Guy Kicks Another Guy Once")
  movie.destroy
end

def can_destroy_all_items_at_once
  allmovies = []
  10.times do |i|
    allmovies << Movie.create(title: "Movie_#{i}")
  end
  allmovies.each{|i|
    i.destroy
  }
end
