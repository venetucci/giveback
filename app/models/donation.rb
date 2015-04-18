class Donation < ActiveRecord::Base
  validates :organization, presence: true
  belongs_to :organization
end
