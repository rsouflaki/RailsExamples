# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#


if Resume.count == 0
  Resume.create(name: 'Bob Catty', phone: '555-555-5555')
  Resume.create(name: 'John Doe', phone: '555-555-5554', city: 'Gent')
end
