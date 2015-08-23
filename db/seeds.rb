Role.create([name: 'admin'])
Role.create([name: 'normal'])

Ustatus.create([name: '缺切結書'])
Ustatus.create([name: '完成報名但未組隊'])
Ustatus.create([name: '完成報名與組隊'])
Ustatus.create([name: '缺學生證影本'])
Ustatus.create([name: '晉級複賽'])

Gstatus.create([name: '初始狀態'])
Gstatus.create([name: '通過初賽資格審核'])
Gstatus.create([name: '通過復賽資格審核'])
Gstatus.create([name: '晉級決賽'])

Skill.create(name: "R語言", category: "分析專長")
Skill.create(name: "SPSS軟體", category: "分析專長")
Skill.create(name: "SAS軟體", category: "分析專長")
Skill.create(name: "統計分析/多變量分析", category: "分析專長")

Skill.create(name: "SQL", category: "資訊專長")
Skill.create(name: "Hadoop", category: "資訊專長")
Skill.create(name: "平行運算", category: "資訊專長")
Skill.create(name: "機器學習", category: "資訊專長")

Skill.create(name: "半導體製程", category: "領域知識專長")
Skill.create(name: "生產製造管理", category: "領域知識專長")


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
  school: Faker::Lorem.paragraph,
  department: Faker::Lorem.paragraph,
  grade: Faker::Number.number(1),
  system: Faker::Lorem.paragraph,
  phone: Faker::Number.number(8),
  cell_phone: Faker::Number.number(10),
  address: Faker::Address.city,
  has_job_bank: false,
  agree_job_bank: [true, false].sample,
  password_job_bank: Faker::Internet.password,
  ustatus: Ustatus.last
)
admin.roles << Role.find_by(name: 'admin')

# create_user = for i in 1..10 do
#   User.create!(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: '12345678',
#     password_confirmation: '12345678',
#     nation: ["中華民國（台灣）籍", "外國籍"].sample,
#     identity: Faker::Number.number(10),
#     birthday: Faker::Date.between(20.years.ago, 30.years.ago),
#     gender: ["male", "female"].sample,
#     school: Faker::Lorem.paragraph,
#     department: Faker::Lorem.paragraph,
#     grade: Faker::Number.number(1),
#     system: Faker::Lorem.paragraph,
#     experience: Faker::Lorem.paragraph,
#     course: Faker::Lorem.paragraph,
#     phone: Faker::Number.number(8),
#     cell_phone: Faker::Number.number(10),
#     address: Faker::Address.city,
#     has_job_bank: [true, false].sample,
#     agree_job_bank: [true, false].sample,
#     password_job_bank: Faker::Internet.password,
#     ustatus: Ustatus.all.sample
#   )
# end
#
#
