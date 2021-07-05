require 'faker'

# User.all.each do |user|
#   phone = 
#   user.update(phone: phone)
# end

# 20.times do |n|
#   User.create(
#     email: "t#{n}@t.t",
#     password: 'password',
#     first_name: Faker::Name.first_name,
#     last_name: Faker::Name.last_name,
#     lock: false,
#     middle_name: Faker::Name.first_name ,
#     role: User.roles[:doctor]
#   )
# end
# 30.times do |n|
#   Phone.create(number: Faker::PhoneNumber.cell_phone, lock: false)
# end
5.times do |n|
  Department.create(
    lock: false,
    level: n + 1,
    name: Faker::Job.field
  )
end
