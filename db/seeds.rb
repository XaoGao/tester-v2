require 'faker'

User.all.each do |user|
  phone = Phone.create(number: Faker::PhoneNumber.cell_phone, lock: false)
  user.update(phone: phone)
end

# 10.times do |n|
#   Position.create(
#     level: n + 1,
#     lock: false,
#     name: Faker::Job.position
#   )
# end
