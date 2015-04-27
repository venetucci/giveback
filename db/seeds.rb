# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Organization.destroy_all
Compliment.destroy_all

messages = [
  "You look nice today",
  "You look dashing today",
  "You are a genuine person",
  "You are very wise",
  "You are an amazing person",
  "You are very intelligent",
  "You have good looks and brains",
  "You are a shrewd decision maker",
  "You have impeccable timing",
  "You have a beautiful soul",
  "You are one of a kind",
]
messages.map { |message| Compliment.find_or_create_by(message: message) }

organizations = [{
  name: 'RailsBridge',
  description: "Railsbridge runs free educational programming workshops targeted at diverse groups of people. 
                They support the idea that the people making technology should accurately reflect the diversity of those using it. 
                Julian is a volunteer instructor for Railsbridge, and Michelle has attended multiple workshops as a student.",
  reason_to_donate: 'I support inclusive education in tech',
  slug: 'railsbridge',
  info_url: 'http://www.railsbridge.com',
  donation_url: 'http://www.railsbridge.org/help/donate',
  sort_order: 1
}, {
  name: 'Annie Wright Schools',
  description: 'Founded in 1884, the Annie Wright Upper School is an all-girls high school in Tacoma, WA. Annie Wright
                gives students the opportunity to do the things they love in authentic and meaningful ways, and
                provide an empowering atmosphere for young women. This also happens to be Michelle’s alma mater, and
                she’s forever grateful for the scholarship that gave her the opportunity to receive such a high calibar
                education. She’s getting a little teary just writing this.',
  reason_to_donate: 'I want to help a girl receive an excellent education',
  slug: 'annie-wright-schools',
  info_url: 'http://www.aw.org',
  donation_url: 'https://aw.myschoolapp.com/Page/Support/Make-a-Gift?siteId=693&ssl=1',
  sort_order: 0,
  featured_content: 'This is very important to us and here is why'
},{
  name: 'Black Girls Code',
  description: "Black Girls Code's mission is to increase the number of women of color in the digital space by empowering girls of color
                ages 7 to 17 to become innovators in STEM fields, leaders in their communities, and builders of their
                own futures through exposure to computer science and technology.",
  reason_to_donate: 'I feel like diversity in tech is important',
  slug: 'black-girls-code',
  info_url: 'http://www.blackgirlscode.com',
  donation_url: 'http://www.blackgirlscode.com',
  sort_order: 2
}, {
  name: 'Hillary Clinton Campaign',
  description: "Aside from the fact that this country is long overdue for a 
                female President, Hillary Clinton is one of the most qualified 
                candidates out there. Note: You must be a U.S. citizen to donate
                to this campaign. We're sorry, we don't make the rules!",
  reason_to_donate: 'I want to support a female president',
  slug: 'hillary-clinton',
  info_url: 'https://www.hillaryclinton.com/',
  donation_url: 'https://www.hillaryclinton.com/donate/',
  sort_order: 3
}, {
  name: 'Southern Poverty Law Center',
  description: 'The Southern Poverty Law Center is dedicated to fighting hate and bigotry and to seeking justice for the most vulnerable members of our society. 
                Using litigation, education, and other forms of advocacy, the Center works toward the day when the ideals of equal justice and equal opportunity will be a reality.',
  reason_to_donate: 'I believe in fighting bigotry',
  slug: 'southern-poverty-law-center',
  info_url: 'http://www.splcenter.org/',
  donation_url: 'https://donate.splcenter.org/sslpage.aspx?pid=464',
  sort_order: 4
}, {
  name: 'Center for Reproductive Rights',
  description: 'For 20 years, the Center for Reproductive Rights has used the law to advance reproductive freedom as 
                a fundamental human right that all governments are legally obligated to protect, respect, and fulfill.',
  reason_to_donate: "I support women's reproductive freedom",
  slug: 'center-for-reproductive-rights',
  info_url: 'http://www.reproductiverights.org/',
  donation_url: 'https://secure3.convio.net/cfrr/site/Donation2?df_id=4620&4620.donation=form1&s_src=webnav&s_subsrc=datasync',
  sort_order: 5
}]

organizations.each { |organization| Organization.find_or_create_by(organization) }
