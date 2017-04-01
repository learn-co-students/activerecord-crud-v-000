class Movie < ActiveRecord::Base

  attr_accessor :release_date, :title, :director, :lead, :in_theatres

  def initialize(opts = {})
    @title = title
    @release_date = release_date
    @director = director
  end

end
