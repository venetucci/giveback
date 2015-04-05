class Compliment < ActiveRecord::Base
  validates :message, presence: true

  def self.random
    order("random()").limit(1).first
  end

  def message_share_url
    share_options = {
      text: "#{message}. Send someone else a compliment:",
      url: "https://www.julianandmichellegiveback.com/complimentme"
    }
    "https://twitter.com/intent/tweet?#{share_options.to_param}"
  end
end
