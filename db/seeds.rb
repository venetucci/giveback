# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Compliment.find_or_create_by(message: "You rock")
Organization.find_or_create_by(
  name: 'RailsBridge',
  slug: 'railsbridge',
  info_url: 'http://www.railsbridge.com',
  donation_url: 'http://www.railsbridge.org/help/donate')
