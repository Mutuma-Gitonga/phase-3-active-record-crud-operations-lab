class Movie < ActiveRecord::Base

  # CREATE METHOD
  def self.create_with_title(title)
    self.create(title: title)
  end

  # READ METHODS
  def self.first_movie
    self.first
  end

  def self.last_movie
    self.last
  end

  def self.movie_count
    self.count
  end

  def self.find_movie_with_id(id)
    self.find(id)
  end

  def self.find_movie_with_attributes(title:, release_date:)
    self.find_by(title: title, release_date: release_date)
  end

  def self.find_movies_after_2002
    self.where("release_date > ?", 2002).select(:title, :release_date)
  end

  # UPDATE METHODS
  def update_with_attributes(title:)
    self.update(title: title)
  end

  def self.update_all_titles(title)
    self.update_all(title: title)
  end

  # DELETE METHODS
  def self.delete_by_id(id)
    self.destroy(id)
  end

  def self.delete_all_movies
    self.destroy_all
  end
end
