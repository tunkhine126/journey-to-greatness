class User < ActiveRecord::Base
  has_many :feelings
  has_many :reflections, through: :feelings
end
