class Item < ApplicationRecord
	has_many :join_table_cart_items
	has_many :carts, through: :join_table_cart_item
	has_many :join_table_order_items
	has_many :orders, through: :join_table_order_item
	validates :title, presence: true, length: { in: 3..14}
    validates :description, presence: true, length: {minimum: 10, maximum: 100}
    validates :image_url, presence: true, format: {with: /\.(png|jpg)\Z/i}
end
