
1.times do |i|
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "test#{i + 1}@test.com",
    password: "password",
    password_confirmation: "password"
  )

  doctor_amount = 5

  doctor_amount.times do
    doctor = Doctor.create(
    name:  Faker::Name.name
    )
  end

  Appointment.create(
    date: Faker::Date.forward(23),
    doctor_id: rand(1..doctor_amount),
    user_id: user.id
  )


end

puts "Data Seeded."