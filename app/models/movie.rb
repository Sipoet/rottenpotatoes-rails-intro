class Movie < ActiveRecord::Base


  scope :all_ratings, ->{distinct(:rating).order(rating: :asc).pluck(:rating)}
  scope :with_ratings, ->(ratings_list) {where(rating: ratings_list)}

end
