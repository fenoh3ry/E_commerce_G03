class JoinTableOrderItemsController < ApplicationController
  def index
  end

  def new
  end

  def create
          puts "="*200
          puts "tonga ao @ create JoinTableOrderItem"
          puts "="*200
    @order = Order.create(user_id: current_user.id)

    current_user.cart.join_table_cart_item.each do |join|
      puts "="*200
          puts "tonga ato #{join}"
          puts "="*200
      @item_id = join.item.id
      puts "="*50
          puts "tonga ao @ @item_id = join.item.id"
          puts "="*50
      @joinTableOrderItems = JoinTableOrderItem.new(order_id: @order.id ,item_id: @item_id)
    
      if @joinTableOrderItems.save
          puts "="*200
          puts "Voaforona ao anaty commande ilay #{@item_id}"
          puts "="*200
        JoinTableCartItem.find_by(item_id: @item_id).destroy
          puts "="*200
          puts "Nofafàna tao anaty cart ilay #{@item_id}"
          puts "="*200
      end
    end
    redirect_to root_path
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