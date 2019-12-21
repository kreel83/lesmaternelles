# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
User.destroy_all
Enfant.destroy_all
u = User.new(nom: 'Jonquieres', prenom: 'magali', email: 'mj@test', password: '000000')
u.save!
20.times do
  e = Enfant.new
  e.prenom = Faker::Name.first_name
  e.nom = Faker::Name.last_name
  e.groupe = ['A','B','C'].sample
  e.emails = Faker::Internet.email
  e.ddn = Faker::Date.between(from: 4.year.ago, to: 3.year.ago)
  e.sexe = ['G','F'].sample
  e.user = u
  e.save!
  puts e.nom


end
