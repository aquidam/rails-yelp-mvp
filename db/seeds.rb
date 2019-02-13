require 'faker'

puts 'Clearing database...'
Restaurant.destroy_all
puts 'Done!'

puts 'Generating new restaurants...'
category_array = %w[chinese italian japanese french belgian]
5.times do
  new_restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category_array.sample
  )
  rand(2..6).times do
    Review.create(
      content: Faker::Restaurant.review,
      rating: rand(0..5),
      restaurant: new_restaurant
    )
  end
end

puts 'Done!'
puts 'All done!'
