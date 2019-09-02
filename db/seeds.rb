require 'faker'
#Item.destroy_all
	for image_name in (1..10) do 

	Item.create(title: Faker::Creature::Cat.name,
				description: Faker::Creature::Cat.breed,
				price: Faker::Commerce.price(range: 0..10.0, as_string: true),
				image_url: "https://github.com/fenoh3ry/CattoPics-for-ecommerceProject/blob/master/#{image_name}.jpg"
				)
	end
