# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Compliment.find_or_create_by(message: "You rock")

organizations = [{
  name: 'RailsBridge',
  description: 'RailsBridge workshops are a free and fun way to get started or level up with web technologies.',
  reason_to_donate: 'I feel like diversity in tech is important',
  slug: 'railsbridge',
  info_url: 'http://www.railsbridge.com',
  donation_url: 'http://www.railsbridge.org/help/donate'
},{
  name: 'Black Girls Code',
  description: 'Mission: To increase the number of women of color in the digital space by empowering girls of color
                ages 7 to 17 to become innovators in STEM fields, leaders in their communities, and builders of their
                own futures through exposure to computer science and technology.',
  reason_to_donate: 'I feel like diversity in tech is important',
  slug: 'black-girls-code',
  info_url: 'http://www.blackgirlscode.com',
  donation_url: 'http://www.blackgirlscode.com'
},{
  name: 'Annie Wright Schools',
  description: 'Founded in 1884, the Annie Wright Upper School is an all-girls high school in Tacoma, WA. Annie Wright
                gives students the opportunity to do the things they love in authentic and meaningful ways, and
                provide an empowering atmosphere for young women. This also happens to be Michelle’s alma mater, and
                she’s forever grateful for the scholarship that gave her the opportunity to receive such a high calibar
                education. She’s getting a little teary just writing this.',
  reason_to_donate: 'I want to help a girl receive an excellent education',
  slug: 'annie-wright-schools',
  info_url: 'http://www.aw.org',
  donation_url: 'https://aw.myschoolapp.com/Page/Support/Make-a-Gift?siteId=693&ssl=1'
},{
  name: 'Girls Who Code',
  description: 'Mission: Launched in Spring 2012, Girls Who Code is a national nonprofit organization working to close
                the gender gap in the technology and engineering sectors. With support from public and private partners,
                Girls Who Code works to educate, inspire, and equip high school girls with the skills and resources to
                pursue opportunities in computing fields.',
  reason_to_donate: "I’d like to support young girls in tech",
  slug: 'girls-who-code',
  info_url: 'https://girlswhocode.com/',
  donation_url: 'https://girlswhocode.com/'
}]

organizations.each { |organization| Organization.find_or_create_by(organization) }
