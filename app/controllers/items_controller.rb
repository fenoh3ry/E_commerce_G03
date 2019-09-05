class ItemsController < ApplicationController
  before_action :set_cart, only: [:index]
   def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
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

  def set_cart
    if user_signed_in?
      puts"*"*100
      puts "set_cart"
      puts"*"*100
      if current_user.cart == nil
        Cart.create(user_id: current_user.id)
        puts"*"*100
        puts "tonga set_cart"
        puts"*"*100
      end
    end
 end
end