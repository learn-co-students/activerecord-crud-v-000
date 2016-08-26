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
    m.director = "?"
    m.lead = "MC"
    m.in_theaters = false
  end
end

def can_get_the_first_item_in_the_database
  Movie.first.title
end

def can_get_the_last_item_in_the_database
  Movie.last.title
end

def can_get_size_of_the_database
  Movie.all.length
end

def can_find_the_first_item_from_the_database_using_id
  Movie.find_by(id: 1).title
end

def can_find_by_multiple_attributes
  Movie.find_by(title: "Title", release_date: 2000, director: "Me")
end

def can_find_using_where_clause_and_be_sorted
  Movie.where("release_date > 2002").order("release_date desc")
end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick"
  Movie.create(title: "Awesome Flick")
  z = Movie.find_by(title: "Awesome Flick")
  z.title = "Even Awesomer Flick"
  z.save
end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
  Movie.create(title: "Wat?")
  x = Movie.find_by(title: "Wat?")
  x.update(title: "Wat, huh?")
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  5.times do |i|
    Movie.create(title: "Movie_#{i}", release_date: 2000+i)
  end

  Movie.all.each do |j|
    j.update(title: "A Movie")
  end

end

def can_destroy_a_single_item
  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  x = Movie.find_by(title: "That One Where the Guy Kicks Another Guy Once")
  x.destroy
end

def can_destroy_all_items_at_once
  10.times do |i|
    Movie.create(title: "Movie_#{i}")
  end

  Movie.all.each do |z|
    z.destroy
  end

end
