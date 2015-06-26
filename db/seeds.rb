# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create([name: 'admin'])

# u = User.create([email: 'admin@gmail.com', password: 'password', password_confirmation: 'password'])
# u.roles << Role.find(name: 'admin')


# 最高權限帳號
admin = User.create([
                name: '管理者',
                email: 'root@gmail.com',
                password: '12345678',
                password_confirmation: '12345678',
                nation: "中華民國（台灣）籍"],
                identity: "0123456789"],
                birthday: "Thu, 25 Aug 1988"],
                gender: "male"],
                experience: "xxx"],
                course: "yyy"],
                phone: "0912345678"],
                cell_phone: "0912345678"],
                address: "zzz"]
                )
admin.role = Role.find(1)
