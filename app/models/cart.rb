class Cart < ApplicationRecord
	belongs_to :user, optional: true
	has_many :join_table_cart_items, dependent: :destroy
	
end
