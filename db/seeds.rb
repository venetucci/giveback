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
  name: 'Black Girls Code',
  description: "Black Girls Code's mission is to increase the number of women of color in the digital space by empowering girls of color
                ages 7 to 17 to become innovators in STEM fields, leaders in their communities, and builders of their
                own futures through exposure to computer science and technology.",
  reason_to_donate: 'I support diversity in tech',
  slug: 'black-girls-code',
  info_url: 'http://www.blackgirlscode.com',
  donation_url: 'http://www.blackgirlscode.com',
  sort_order: 2
}, {
  name: 'Planned Parenthood',
  description: "Planned Parenthood was founded on the idea that women should have the information and care they need to live strong, healthy lives and fulfill their dreams. Planned Parenthood delivers vital reproductive health care, sex education, and information to millions of women, men, and young people worldwide.",
  reason_to_donate: "I support women's health",
  slug: 'planned-parenthood',
  info_url: 'https://www.plannedparenthood.org/',
  donation_url: 'https://secure.ppaction.org/site/Donation2?df_id=12913&12913.donation=form1&_ga=1.91809938.924884430.1481423498',
  sort_order: 3
}, {
  name: 'Southern Poverty Law Center',
  description: 'The Southern Poverty Law Center is dedicated to fighting hate and bigotry and to seeking justice for the most vulnerable members of our society. Using litigation, education, and other forms of advocacy, the Center works toward the day when the ideals of equal justice and equal opportunity will be a reality.',
  reason_to_donate: 'I support fighting bigotry',
  slug: 'southern-poverty-law-center',
  info_url: 'http://www.splcenter.org/',
  donation_url: 'https://donate.splcenter.org/sslpage.aspx?pid=464',
  sort_order: 4
}, {
  name: 'Standing Rock Sioux Dakota Pipeline Protest',
  description: 'The Sacred Stone Camp was established April 1, 2016 as a center of spiritual and cultural opposition to the Dakota Access pipeline, and is determined to stop construction through prayer and non­violent direct action until adequate tribal consultation and environmental review are conducted.',
  reason_to_donate: "I support indigenous and environmental justice",
  slug: 'standing-rock',
  info_url: 'http://standingrock.org/',
  donation_url: 'http://standingrock.org/news/standing-rock-sioux-tribe--dakota-access-pipeline-donation-fund/',
  sort_order: 5
}]

organizations.each { |organization| Organization.find_or_create_by(organization) }
