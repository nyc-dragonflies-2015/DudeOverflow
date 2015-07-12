class Tag < ActiveRecord::Base
  has_many :questions_tags, dependent: :destroy
  has_many :questions, through: :questions_tags

end
