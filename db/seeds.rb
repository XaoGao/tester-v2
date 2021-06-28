require 'faker'

10.times do |n|
  Position.create(
    level: n + 1,
    lock: false,
    name: Faker::Job.position
  )
end
