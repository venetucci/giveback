class Organization < ActiveRecord::Base
  validates :name, presence: true
  validates :slug, presence: true
  validates :info_url, presence: true
  validates :donation_url, presence: true

  def to_param
    slug
  end
end
