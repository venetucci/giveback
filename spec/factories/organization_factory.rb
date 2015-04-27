FactoryGirl.define do
  factory :organization do
    name 'RailsBridge'
    description 'RailsBridge workshops are a free and fun way to get started or level up with web technologies.'
    reason_to_donate 'I feel like diversity in tech is important'
    slug 'railsbridge'
    info_url 'http://www.railsbridge.com'
    donation_url 'http://www.railsbridge.org/donate'
    sort_order 0
  end
end
