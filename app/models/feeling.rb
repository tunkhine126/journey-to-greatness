class Feeling < ActiveRecord::Base
  has_many :reflections
  has_many :reflections, through: :feelings
end
