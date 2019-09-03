class Item < ApplicationRecord
	has_many :join_table_cart_item, dependent: :nullify
	has_many :orders
	validates :title, presence: true, length: { in: 3..14}
    validates :description, presence: true, length: {minimum: 10, maximum: 100}
    validates :image_url, presence: true, format: {with: /\.(png|jpg|gif)\Z/i}
end
