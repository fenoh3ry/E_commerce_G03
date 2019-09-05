require 'faker'
Item.destroy_all
User.destroy_all
Cart.destroy_all
JoinTableCartItem.destroy_all
Order.destroy_all
JoinTableOrderItem.destroy_all
	20.times do
        Item.create(title: Faker::Creature::Cat.name,
                    description: Faker::Creature::Cat.breed,
                    price: Faker::Commerce.price(range: 0..10.0, as_string: true)
                    )
    end

puts "20 seed for item created succesfully with 4 attributs"

    10.times do
        User.create(email: Faker::Internet.email,
                    password: "123456")
    end

puts "10 seed for user created succesfully with 2 attributs"

    for user in (1..10)
        Cart.create(user_id: user)
    end

puts "10 seed for Cart created succesfully with attribut user_id "

    20.times do
        JoinTableCartItem.create(cart_id: rand(1..10),
                                item_id: rand(1..20))
    end

puts "20 seed for JoinTableCartItem created succesfully with 2 attributs"

    for user in (1..10)
        Order.create(user_id: user)
    end

puts "10 seed for Order created succesfully with attribut user_id "

    20.times do
        JoinTableOrderItem.create(order_id: rand(1..10),
                                item_id: rand(1..20))
    end

puts "20 seed for JoinTableOrderItem created succesfully with 2 attributs"

