require 'rails_helper'

RSpec.describe Compliment, type: :model do
  it 'fails validation with no message' do
    expect(Compliment.new(message: nil)).to have(1).error_on(:message)
  end
end
