class CartsController < ApplicationController
    before_action :set_cart, only: [:new, :create, :show]
 
  def index
    @carts = Cart.all
  end

  def show
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

  private

    def set_cart
    @cart = Cart.find(params[:id])
    end
end

