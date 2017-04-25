# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Plan.create(name: 'basic', price: 0)
Plan.create(name: 'premium', price: 10)


User.create!(username: 'Alex', password: 'asdfasdf', is_informant: false, plan_id: 2)
User.create!(username: 'CFA_Mole', password: 'asdfasdf', is_informant: true, plan_id: 1)
User.create!(username: 'GGreenwald', password: 'asdfasdf', is_informant: false, plan_id: 2)
User.create!(username: 'Sn0wd3n', password: 'asdfasdf', is_informant: true, plan_id: 2)
User.create!(username: 'JStewart', password: 'asdfasdf', is_informant: false, plan_id: 1)

