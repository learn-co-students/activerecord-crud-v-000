class Movie < ActiveRecord::Base
  Movie.find_or_initialize_by(:title)
end
