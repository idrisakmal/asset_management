# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

s = Staff.create(name: "Imran Ismail", hp: "0147338123", password: "password", email: "m.imran@mymagic.my")
i = Staff.create(name: "Idris Akmal", hp: "0172012370", password: "password", email: "idris@mymagic.my")
r = Role.create(name: "Admin", code: "admin")
s.roles << r
i.roles << r

