(1..20).each do |i|
  User.create(
    name: Faker::Name.unique.name,
    email: Faker::Internet.email,
    address: "#{Faker::Address.street_address} #{Faker::Address.city} #{Faker::Address.state} #{Faker::Address.country}",
    phone: Faker::PhoneNumber.cell_phone,
    avatar: Faker::Avatar.image
  )
end