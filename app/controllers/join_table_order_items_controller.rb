class JoinTableOrderItemsController < ApplicationController
  def index
  end

  def new
  end

  def create   
    current_user.cart.join_table_cart_items.each do |join|

      JoinTableOrderItem.create(order: Order.create(user: current_user), item: join.item)

      join.destroy

    end
    redirect_to order_path(current_user.orders.last.id)
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end
end