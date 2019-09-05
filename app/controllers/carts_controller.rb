class CartsController < ApplicationController
 
  def index
    @carts = Cart.all
  end

  def show
    @cart = Cart.find(current_user.cart.id)
    def sum
      sum = 0
        for i in (0..@cart.join_table_cart_items.length-1)
          sum = sum + @cart.join_table_cart_items[i].item.price
        end
      return sum 
    end
    @sum = sum
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  def edit
  end
  
end

