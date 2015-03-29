class Compliment < ActiveRecord::Base
  validates :message, presence: true
end
