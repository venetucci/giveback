class Compliment < ActiveRecord::Base
  validates :message, presence: true

  def message_share_copy
    URI.encode("#{message}. Send someone else a compliment:")
  end
end
