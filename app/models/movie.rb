class Movie < ActiveRecord::Base

  def save
    create_or_update
  end

end
