# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create([name: 'admin'])

# 最高權限帳號
admin = User.create!(
  name: "管理員",
  email: "admin@gmail.com",
  password: 'password',
  password_confirmation: 'password',
  nation: ["中華民國（台灣）籍", "外國籍"].sample,
  identity: Faker::Number.number(10),
  birthday: "Thu, 25 Aug 1988",
  gender: "male",
  experience: Faker::Lorem.paragraph,
  course: Faker::Lorem.paragraph,
  phone: Faker::Number.number(8),
  cell_phone: Faker::Number.number(10),
  address: Faker::Address.city,
  has_job_bank: false,
  agree_job_bank: [true, false].sample,
  password_job_bank: Faker::Internet.password
)
admin.roles << Role.find_by(name: 'admin')

create_user = for i in 1..20 do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: '12345678',
    password_confirmation: '12345678',
    nation: ["中華民國（台灣）籍", "外國籍"].sample,
    identity: Faker::Number.number(10),
    birthday: Faker::Date.between(20.years.ago, 30.years.ago),
    gender: ["male", "female"].sample,
    experience: Faker::Lorem.paragraph,
    course: Faker::Lorem.paragraph,
    phone: Faker::Number.number(8),
    cell_phone: Faker::Number.number(10),
    address: Faker::Address.city,
    has_job_bank: [true, false].sample,
    agree_job_bank: [true, false].sample,
    password_job_bank: Faker::Internet.password
  )
end

